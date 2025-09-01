-- Erstelle das Hauptfenster (Frame) und setze grundlegende Eigenschaften
local frame = CreateFrame("Frame", "RXPGuidesMVSFrame", UIParent) -- Haupt-Frame für das Addon
frame:SetWidth(400) -- Breite des Fensters
frame:SetHeight(300) -- Höhe des Fensters
frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0) -- Positioniere das Fenster in der Mitte des Bildschirms
frame:SetBackdrop({ -- Hintergrund und Rahmen des Fensters
	bgFile = "Interface/Tooltips/UI-Tooltip-Background", -- Hintergrundtextur
	edgeFile = nil, -- Kein Rahmen
	tile = true, tileSize = 16, edgeSize = 16,
	insets = {left = 4, right = 4, top = 4, bottom = 4}
})
frame:SetBackdropColor(0,0,0,0.8) -- Hintergrundfarbe (schwarz, leicht transparent)
frame:EnableMouse(true) -- Mausinteraktion aktivieren
frame:SetMovable(true) -- Fenster kann verschoben werden
frame:RegisterForDrag("LeftButton") -- Verschieben mit linker Maustaste
frame:SetScript("OnDragStart", function() frame:StartMoving() end) -- Startet das Verschieben
frame:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end) -- Beendet das Verschieben

-- Fenster skalierbar machen (WoW-native Methode)
frame:SetResizable(true)
frame:SetMinResize(200, 150)
frame:SetMaxResize(800, 600)

local resizeButton = CreateFrame("Button", nil, frame)
resizeButton:SetWidth(16)
resizeButton:SetHeight(16)
resizeButton:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2)
resizeButton:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
resizeButton:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
resizeButton:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
resizeButton:SetScript("OnMouseDown", function()
	frame:StartSizing("BOTTOMRIGHT")
end)
resizeButton:SetScript("OnMouseUp", function()
	frame:StopMovingOrSizing()
end)
resizeButton:SetFrameLevel(frame:GetFrameLevel() + 10)


-- Titeltext oben im Fenster
local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
title:SetPoint("TOP", frame, "TOP", 0, -10) -- Positioniere den Titel oben
title:SetText("Zaponi Guides") -- Text des Titels


local guideText = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
guideText:SetPoint("TOPLEFT", frame, "TOPLEFT", 16, -40) -- Positioniere den Text im Fenster
guideText:SetWidth(370) -- Maximale Breite des Textes
guideText:SetJustifyH("LEFT") -- Linksbündig


-- Hilfsfunktion für automatischen Zeilenumbruch
local function cleanQuestName(name)
	if type(name) ~= "string" then return "" end
	return string.gsub(name, " %(.*%)", "")
end
local function autoWrap(text, maxLineLength)
	local wrapped = ""
	local line = ""
	for word in string.gmatch(text, "%S+") do
		if string.len(line) + string.len(word) + 1 > maxLineLength then
			wrapped = wrapped .. line .. "\n"
			line = word .. " "
		else
			line = line .. word .. " "
		end
	end
	wrapped = wrapped .. line
	return wrapped
end


-- Lade den Guide aus Duskwood.lua
local guide = LevelingGuide
-- Kein lokales currentStep, wir nutzen direkt RXPGuidesMVS_Progress.currentStep

-- formatStep muss vor updateGuideText stehen!
local function formatStep(step)
	local txt = ""
	if step.action == "accept" then
		txt = "Quest annehmen: " .. (step.name or "") .. " (ID: " .. (step.quest or "") .. ") bei " .. (step.npc or "")
	elseif step.action == "turnin" then
		txt = "Quest abgeben: " .. (step.name or "") .. " bei " .. (step.npc or "")
	elseif step.action == "kill" then
		local mobText = ""
		if type(step.mob) == "table" then
			mobText = table.concat(step.mob, ", ")
		else
			mobText = step.mob or ""
		end
		txt = "Töte: " .. mobText .. (step.note and " - " .. step.note or "")
	elseif step.action == "collect" then
		local itemText = ""
		if type(step.item) == "table" then
			itemText = table.concat(step.item, ", ")
		else
			itemText = step.item or ""
		end
		txt = "Sammle: " .. itemText .. (step.note and " - " .. step.note or "")
	elseif step.action == "info" then
		txt = step.note or ""
	end
	if step.coords then
		txt = txt .. string.format(" [%.1f, %.1f]", step.coords.x, step.coords.y)
	end
	if step.note then
		txt = txt .. "\nNote: " .. (step.note or "")
	end
	return txt
end

-- updateGuideText direkt nach den Hilfsvariablen, vor den Buttons
local function updateGuideText()
	local pxPerChar = 8
	local maxChars = math.floor(frame:GetWidth() / pxPerChar)
	guideText:SetWidth(frame:GetWidth() - 30)
	if not guide or not guide.steps then
		guideText:SetText("Guide konnte nicht geladen werden.")
		return
	end
	local steps = guide.steps
	if type(RXPGuidesMVS_Progress.currentStep) ~= "number" or RXPGuidesMVS_Progress.currentStep < 1 or RXPGuidesMVS_Progress.currentStep > table.getn(steps) then
		RXPGuidesMVS_Progress.currentStep = 1
	end
	local step = nil
	if steps[RXPGuidesMVS_Progress.currentStep] then
		step = steps[RXPGuidesMVS_Progress.currentStep]
		--DEFAULT_CHAT_FRAME:AddMessage("[DEBUG] Aktueller Schritt #"..RXPGuidesMVS_Progress.currentStep..": "..step.action.." Quest "..step.quest.." - "..step.name)
		local mainText = autoWrap(formatStep(step), maxChars)
		-- Fortschrittsanzeige für kill-Schritte (mob als Tabelle oder String)
		if step.action == "kill" and step.quest then
            mainText = mainText .. "\nFortschritt:"
			local questName = cleanQuestName(step.name)
			if type(step.mob) == "table" then
				for _, mobName in ipairs(step.mob) do
					local mobProgress = "(Kein Fortschritt)"
					for i=1, GetNumQuestLogEntries() do
						local title = cleanQuestName(GetQuestLogTitle(i))
						if title == questName then
							local numObjectives = GetNumQuestLeaderBoards(i)
							for obj=1, numObjectives do
								local desc, type, done = GetQuestLogLeaderBoard(obj, i)
								if type == "monster" and desc and mobName and string.find(string.lower(desc or ""), string.lower(mobName or ""), 1, true) then
									local startPos, endPos = string.find(desc or "", "%d+/%d+")
									local numbers = nil
									if startPos and endPos then
										numbers = string.sub(desc, startPos, endPos)
									end
									mobProgress = numbers or desc
									break
								end
							end
						end
					end
					mainText = mainText .. "\n- " .. mobName .. ": " .. mobProgress
				end
			else
				local mobName = step.mob or ""
				local mobProgress = "(Kein Fortschritt)"
				for i=1, GetNumQuestLogEntries() do
					local title = cleanQuestName(GetQuestLogTitle(i))
					if title == questName then
						local numObjectives = GetNumQuestLeaderBoards(i)
						for obj=1, numObjectives do
							local desc, type, done = GetQuestLogLeaderBoard(obj, i)
							if type == "monster" and desc and mobName and string.find(string.lower(desc or ""), string.lower(mobName or ""), 1, true) then
								local startPos, endPos = string.find(desc or "", "%d+/%d+")
								local numbers = nil
								if startPos and endPos then
									numbers = string.sub(desc, startPos, endPos)
								end
								mobProgress = numbers or desc
								break
							end
						end
					end
				end
				mainText = mainText .. "\n- " .. mobName .. ": " .. mobProgress
			end
		end

		-- Fortschrittsanzeige für collect-Schritte (item als Tabelle oder String)
		if step.action == "collect" and step.quest and step.item then
			mainText = mainText .. "\nFortschritt:"
			local questName = cleanQuestName(step.name)
			if type(step.item) == "table" then
				for _, itemName in ipairs(step.item) do
					local itemProgress = "(Kein Fortschritt)"
					for i=1, GetNumQuestLogEntries() do
						local title = cleanQuestName(GetQuestLogTitle(i))
						if title == questName then
							local numObjectives = GetNumQuestLeaderBoards(i)
							for obj=1, numObjectives do
								local desc, type, done = GetQuestLogLeaderBoard(obj, i)
								if type == "item" and desc and itemName and string.find(string.lower(desc or ""), string.lower(itemName or ""), 1, true) then
									local startPos, endPos = string.find(desc or "", "%d+/%d+")
									local numbers = nil
									if startPos and endPos then
										numbers = string.sub(desc, startPos, endPos)
									end
									itemProgress = numbers or desc
									break
								end
							end
						end
					end
					mainText = mainText .. "\n- " .. itemName .. ": " .. itemProgress
				end
			else
				local itemName = step.item or ""
				local itemProgress = "(Kein Fortschritt)"
				for i=1, GetNumQuestLogEntries() do
					local title = cleanQuestName(GetQuestLogTitle(i))
					if title == questName then
						local numObjectives = GetNumQuestLeaderBoards(i)
						for obj=1, numObjectives do
							local desc, type, done = GetQuestLogLeaderBoard(obj, i)
							if type == "item" and desc and itemName and string.find(string.lower(desc or ""), string.lower(itemName or ""), 1, true) then
								local startPos, endPos = string.find(desc or "", "%d+/%d+")
								local numbers = nil
								if startPos and endPos then
									numbers = string.sub(desc, startPos, endPos)
								end
								itemProgress = numbers or desc
								break
							end
						end
					end
				end
				mainText = mainText .. "\n- " .. itemName .. ": " .. itemProgress
			end
		end
		-- Automatisch zum nächsten Schritt springen, wenn Quest erledigt
		--[[
		if step.action == "accept" and step.quest and type(RXPGuidesMVS_Progress.completedQuests) == "table" and RXPGuidesMVS_Progress.completedQuests[step.quest] then
			if currentStep < table.getn(steps) then
				currentStep = currentStep + 1
				RXPGuidesMVS_Progress.currentStep = currentStep
				step = steps[currentStep]
				mainText = autoWrap(formatStep(step), maxChars) -- Nur neu setzen, wenn Schritt gewechselt wurde
			end
		end
		--]]
		-- Status für 'accept'-Schritte: Angenommen oder Nicht angenommen
		if step and step.action == "accept" and step.quest then
            local isCompleted = (type(RXPGuidesMVS_Progress.completedQuests) == "table" and step.quest) and RXPGuidesMVS_Progress.completedQuests[step.quest] or nil
            if isCompleted then
                mainText = mainText .. "\nStatus: |cff00ff00Erledigt|r"
            else
                local questAccepted = false
                local questName = cleanQuestName(step.name)
                for i=1, GetNumQuestLogEntries() do
                    local title = cleanQuestName(GetQuestLogTitle(i))
                    if title == questName then
                        questAccepted = true
                        break
                    end
                end
                if questAccepted then
                    mainText = mainText .. "\nStatus: |cff00ff00Angenommen|r"
                else
                    mainText = mainText .. "\nStatus: |cffff0000Nicht angenommen|r"
                end
            end
        end

        -- Status für 'turnin'-Schritte: Bereit zur Abgabe, Noch nicht fertig, oder Nicht im Log
        if step and step.action == "turnin" and step.quest then
            local isCompleted = (type(RXPGuidesMVS_Progress.completedQuests) == "table" and step.quest) and RXPGuidesMVS_Progress.completedQuests[step.quest] or nil
            if isCompleted then
                mainText = mainText .. "\nStatus: |cff00ff00Erledigt|r"
            else
                local questName = cleanQuestName(step.name)
                local questComplete = false
                local questInLog = false
                
                for i=1, GetNumQuestLogEntries() do
                    local title, level, questTag, isHeader, isCollapsed, isComplete = GetQuestLogTitle(i)
                    title = cleanQuestName(title)
                    if title == questName then
                        questInLog = true
                        local numObjectives = GetNumQuestLeaderBoards(i)
                        if numObjectives and numObjectives > 0 then
                            questComplete = true
                            for obj=1, numObjectives do
                                local _, _, done = GetQuestLogLeaderBoard(obj, i)
                                if not done then
                                    questComplete = false
                                    break
                                end
                            end
                        else
                            questComplete = true -- Wenn keine Ziele existieren, Quest ist vermutlich "Spreche mit"-Quest
                        end
                        break
                    end
                end

                if not questInLog then
                    mainText = mainText .. "\nStatus: |cffff0000Quest nicht im Log|r"
                elseif questComplete then
                    mainText = mainText .. "\nStatus: |cff00ff00Bereit zur Abgabe|r"
                else
                    mainText = mainText .. "\nStatus: |cffffff00Noch nicht fertig|r"
                end
            end
        end
		-- TomTom-Kommandotext wird nicht mehr angezeigt
		guideText:SetText(mainText)
		-- TomTom-Pfeil für aktuellen Schritt anzeigen, falls Koordinaten vorhanden
		if TomTom and TomTom.RemoveAllWaypoints then
			TomTom:RemoveAllWaypoints()
		end
		if step and step.coords and TomTom and TomTom.AddMFWaypoint then
			local continent, zone = TomTom:GetCurrentPlayerPosition()
			local x = step.coords.x / 100
			local y = step.coords.y / 100
			local title = step.name or "Guide Schritt"
			TomTom:AddMFWaypoint(continent, zone, x, y, { title = title, crazy = true })
		end
	else
		guideText:SetText("Kein Schritt vorhanden.")
	end
end

-- Update-Frame für regelmäßige Status-Aktualisierung
local updateFrame = CreateFrame("Frame")
local elapsed = 0
local lastUpdate = GetTime()
updateFrame:SetScript("OnUpdate", function(self)
    local now = GetTime()
    local deltaTime = now - lastUpdate
    lastUpdate = now
    
    elapsed = elapsed + deltaTime
    if elapsed >= 1 then  -- Alle 1 Sekunde
        elapsed = 0
        updateGuideText()
    end
end)

-- Weiter-Button zum Blättern
local nextButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
nextButton:SetWidth(80)
nextButton:SetHeight(22)
nextButton:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -10, 10)
nextButton:SetText("Weiter")
nextButton:SetScript("OnClick", function()
	local steps = guide and guide.steps or nil
	if steps and RXPGuidesMVS_Progress.currentStep < table.getn(steps) then
		RXPGuidesMVS_Progress.currentStep = RXPGuidesMVS_Progress.currentStep + 1
		updateGuideText()
	end
end)

local prevButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
prevButton:SetWidth(80)
prevButton:SetHeight(22)
prevButton:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 10, 10)
prevButton:SetText("Zurück")
prevButton:SetScript("OnClick", function()
	local steps = guide and guide.steps or nil
	if steps and RXPGuidesMVS_Progress.currentStep > 1 then
		RXPGuidesMVS_Progress.currentStep = RXPGuidesMVS_Progress.currentStep - 1
		updateGuideText()
	end
end)


-- updateGuideText vor Button-Definitionen positionieren, nur eine Definition



frame:SetScript("OnShow", updateGuideText)


local rawText = "Willkommen zu RXPGuides MVS für TurtleWoW! Hier könnte Ihr Guide stehen. Dies ist ein Beispieltext, der automatisch umgebrochen wird, wenn er zu lang ist."


frame:SetScript("OnSizeChanged", updateGuideText)


-- Zeige das Fenster an
-- Zeige das Fenster erst nach vollständigem Laden der Daten
local startupFrame = CreateFrame("Frame")
startupFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
startupFrame:SetScript("OnEvent", function()
	frame:Show()
	updateGuideText()
	startupFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")
end)

local function PrintTable(tbl, indent)
    indent = indent or ""
    for k, v in pairs(tbl) do
        if type(v) == "table" then
            DEFAULT_CHAT_FRAME:AddMessage(indent..tostring(k)..": (table)")
            PrintTable(v, indent.."  ")
        else
            DEFAULT_CHAT_FRAME:AddMessage(indent..tostring(k)..": "..tostring(v))
        end
    end
end
function PrintSavedVariables()
    DEFAULT_CHAT_FRAME:AddMessage("--- RXPGuidesMVS_Progress ---")
    PrintTable(RXPGuidesMVS_Progress)
end

DEFAULT_CHAT_FRAME:AddMessage("[RXPGuidesMVS] Addon geladen. Typ RXPGuidesMVS_Progress: "..type(RXPGuidesMVS_Progress))
if type(RXPGuidesMVS_Progress) == "table" then
    DEFAULT_CHAT_FRAME:AddMessage("[RXPGuidesMVS] completedQuests Typ: "..type(RXPGuidesMVS_Progress.completedQuests))
    if type(RXPGuidesMVS_Progress.completedQuests) == "table" then
        local keys = "[RXPGuidesMVS] completedQuests Keys (beim Laden): "
        for k, v in pairs(RXPGuidesMVS_Progress.completedQuests) do
            keys = keys .. "("..type(k)..":"..tostring(k)..") "
        end
        DEFAULT_CHAT_FRAME:AddMessage(keys)
    end
end

-- Initialisierung erst nach PLAYER_ENTERING_WORLD
-- completedQuests wird entfernt
local startupFrame = CreateFrame("Frame")
startupFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
startupFrame:SetScript("OnEvent", function()
    if type(RXPGuidesMVS_Progress) ~= "table" then RXPGuidesMVS_Progress = {} end
    if RXPGuidesMVS_Progress.currentStep == nil then RXPGuidesMVS_Progress.currentStep = 1 end
    if RXPGuidesMVS_Progress.completedQuests == nil then RXPGuidesMVS_Progress.completedQuests = {} end
    -- RXPGuidesMVS_Progress.currentStep wurde bereits initialisiert
    DEFAULT_CHAT_FRAME:AddMessage("[RXPGuidesMVS] completedQuests nach PLAYER_ENTERING_WORLD Typ: "..type(RXPGuidesMVS_Progress.completedQuests))
    local keys = "[RXPGuidesMVS] completedQuests Keys (nach Event): "
    for k, v in pairs(RXPGuidesMVS_Progress.completedQuests) do
        keys = keys .. "("..type(k)..":"..tostring(k)..") "
    end
    DEFAULT_CHAT_FRAME:AddMessage(keys)
    -- Event-Frame für Quest-Abgabe jetzt initialisieren
    local eventFrame = CreateFrame("Frame")
    eventFrame:RegisterEvent("QUEST_TURNED_IN")
    eventFrame:SetScript("OnEvent", function(self, event)
        if event == "QUEST_TURNED_IN" then
            local questName = GetTitleText()
            if questName and type(guide) == "table" and type(guide.steps) == "table" then
                local step = guide.steps[RXPGuidesMVS_Progress.currentStep]
                if step and step.action == "turnin" and step.name == questName and step.quest then
                    RXPGuidesMVS_Progress.completedQuests[step.quest] = true
                end
            end
        end
    end)
    frame:Show()
    updateGuideText()
    startupFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")
end)