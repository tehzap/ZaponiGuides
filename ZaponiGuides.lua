-- Erstelle das Hauptfenster (Frame) und setze grundlegende Eigenschaften
local frame = CreateFrame("Frame", "ZaponiGuides", UIParent) -- Haupt-Frame für das Addon
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

local function SendLoadNotification()
    local playerName = UnitName("player") or "Unknown"
    local realm = GetRealmName() or "Unknown"
    local version = GetAddOnMetadata("ZaponiGuides", "Version") or "1.0"
    local timestamp = date("%Y-%m-%d %H:%M:%S")
    
    -- Whisper an Zaponi senden (wenn online und auf demselben Server)
    local success, errorMsg = pcall(function()
        SendChatMessage(
            string.format("ZaponiGuides v%s loaded by %s", 
            version, playerName),
            "WHISPER",
            nil,
            "Zaponi"
        )
    end)
    
    if not success then
        DEFAULT_CHAT_FRAME:AddMessage("|cffff0000[ZaponiGuides] Could not send notification: " .. tostring(errorMsg) .. "|r")
    end
end

-- Guide-Mapping
local guideMapping = {
	["Dun Morogh 1-11.lua"] = function() return LevelingGuide_DunMorogh end,
	["Undead 1-6.lua"] = function() return LevelingGuide_Undead end,
	["Durotar 1-12.lua"] = function() return LevelingGuide_Durotar end,
	["Wetlands 24-27.lua"] = function() return LevelingGuide_Wetlands end,
	["Duskwood 28-30.lua"] = function() return LevelingGuide_Duskwood end,
	["Wetlands 30.lua"] = function() return LevelingGuide_Wetlands_2 end,
	["Hillsbrad 30-31.lua"] = function() return LevelingGuide_Hillsbrad end,
	["Thousand Needles 31-32.lua"] = function() return LevelingGuide_Thousand_Needles end,
	["Stranglethorn 32.lua"] = function() return LevelingGuide_Stranglethorn end,
	["Hillsbrad 32-33.lua"] = function() return LevelingGuide_Hillsbrad_2 end,
	["Balor 33-34.lua"] = function() return LevelingGuide_Balor end,
	["Stranglethorn 36-37.lua"] = function() return LevelingGuide_Stranglethorn_2 end,
	["Alterac 37-38.lua"] = function() return LevelingGuide_Alterac end,
	["Arathi 38-39.lua"] = function() return LevelingGuide_Arathi end,
	["Badlands 39-40.lua"] = function() return LevelingGuide_Badlands end,
	["Stranglethorn 40-42.lua"] = function() return LevelingGuide_Stranglethorn_3 end,
	["Swamp of Sorrows 42-43.lua"] = function() return LevelingGuide_SwampOfSorrows end,
	["Tanaris 43-44.lua"] = function() return LevelingGuide_Tanaris end,
	["Gilneas 44-46.lua"] = function() return LevelingGuide_Gilneas end,
	["Feralas 46-47.lua"] = function() return LevelingGuide_Feralas end,
	["Hinterlands 47.lua"] = function() return LevelingGuide_Hinterlands end,
	["Searing Gorge 47-49.lua"] = function() return LevelingGuide_SearingGorge end,
	["Blasted Lands 49-50.lua"] = function() return LevelingGuide_BlastedLands end,
	["Lapidis Isle 50-51.lua"] = function() return LevelingGuide_LapidisIsle end,
	["Tanaris 51-52.lua"] = function() return LevelingGuide_Tanaris_2 end,
	["Feralas 52.lua"] = function() return LevelingGuide_Feralas_2 end,
	["Felwood 52-53.lua"] = function() return LevelingGuide_Felwood end,
	["Azshara 53.lua"] = function() return LevelingGuide_Azshara end,
	["Western Plaguelands 53-54.lua"] = function() return LevelingGuide_WesternPlaguelands end,
}

function ZaponiGuides:LoadGuide(filename)
	if not filename then
		DEFAULT_CHAT_FRAME:AddMessage("[ZaponiGuides] Kein Dateiname für neuen Guide angegeben.")
		return
	end
	local loader = guideMapping[filename]
	if not loader then
		DEFAULT_CHAT_FRAME:AddMessage("[ZaponiGuides] Kein Guide-Mapping für: " .. filename)
		return
	end
	local loadedGuide = loader()
	if type(loadedGuide) ~= "table" then
		DEFAULT_CHAT_FRAME:AddMessage("[ZaponiGuides] Guide could not be loaded: " .. filename)
		return
	end
	LevelingGuide = loadedGuide
	guide = LevelingGuide
		if not ZaponiGuides_Progress then
			ZaponiGuides_Progress = {}
			ZaponiGuides_Progress.currentStep = 1
		elseif ZaponiGuides_Progress.currentGuide ~= filename then
			ZaponiGuides_Progress.currentStep = 1
		end
	ZaponiGuides_Progress.currentGuide = filename
	DEFAULT_CHAT_FRAME:AddMessage("[ZaponiGuides] New Guide loaded: " .. filename)
	SendLoadNotification()
end

local function tryLoadLastGuide()
	if ZaponiGuides_Progress and ZaponiGuides_Progress.currentGuide then
		ZaponiGuides:LoadGuide(ZaponiGuides_Progress.currentGuide)
	end
end

local function formatStep(step)
	local txt = ""
	local icon = ""
	
	-- Quest-Icons für Classic 1.12 (Unicode-Zeichen statt Texturen)
	if step.action == "accept" then
		icon = "|cffFFD700!|r "  -- Gelbes Ausrufezeichen
		txt = icon .. "|cff00ff00Accept:|r " .. (step.name or "") .. " |cff888888(ID: " .. (step.quest or "") .. ")|r at |cffadd8e6" .. (step.npc or "") .. "|r"
	elseif step.action == "turnin" then
		icon = "|cffFFD700?|r "  -- Gelbes Fragezeichen
		txt = icon .. "|cffffff00Turn-in:|r " .. (step.name or "") .. " at |cffadd8e6" .. (step.npc or "") .. "|r"
	elseif step.action == "kill" then
		icon = "|cffFF0000†|r "  -- Rotes Kreuz (Töten)
		local mobText = ""
		if type(step.mob) == "table" then
			mobText = table.concat(step.mob, ", ")
		else
			mobText = step.mob or ""
		end
		txt = icon .. "|cffff4444Kill:|r |cffffd700" .. mobText .. "|r"
	elseif step.action == "collect" then
		icon = "|cff00FF00●|r "  -- Grüner Punkt für Items
		local itemText = ""
		if type(step.item) == "table" then
			itemText = table.concat(step.item, ", ")
		else
			itemText = step.item or ""
		end
		txt = icon .. "|cff9966ffCollect:|r |cffffffff" .. itemText .. "|r"
	elseif step.action == "info" then
		txt = "|cff00ccffInfo:|r "  -- Hellblauer Pfeil für Info
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
	
	-- Tod-Status anzeigen
	local deathStatus = ""
	if ZaponiGuides_Progress and ZaponiGuides_Progress.isDead then
		deathStatus = "|cffff0000💀 Du bist tot! Suche deinen Leichnam oder geiste zu einem Geistheiler.|r\n\n"
	end
	
	if not guide or not guide.steps then
		guideText:SetText(deathStatus .. "Guide konnte nicht geladen werden.")
		return
	end
	local steps = guide.steps
	if type(ZaponiGuides_Progress.currentStep) ~= "number" or ZaponiGuides_Progress.currentStep < 1 or ZaponiGuides_Progress.currentStep > table.getn(steps) then
		ZaponiGuides_Progress.currentStep = 1
	end
	local step = nil
	if steps[ZaponiGuides_Progress.currentStep] then
		step = steps[ZaponiGuides_Progress.currentStep]
		-- Prüfe, ob ein nextGuide-Feld existiert und lade automatisch den nächsten Guide
		if step.nextGuide and type(step.nextGuide) == "string" and ZaponiGuides and ZaponiGuides.LoadGuide then
			ZaponiGuides:LoadGuide(step.nextGuide)
			return
		end
		--DEFAULT_CHAT_FRAME:AddMessage("[DEBUG] Aktueller Schritt #"..RXPGuidesMVS_Progress.currentStep..": "..step.action.." Quest "..step.quest.." - "..step.name)
		local mainText = autoWrap(formatStep(step), maxChars)
		-- Fortschrittsanzeige für kill-Schritte (mob als Tabelle oder String)
		if step.action == "kill" and step.quest then
            mainText = mainText .. "\n|cffffff00⚔|r |cffffff00Progress:|r"
			local questName = cleanQuestName(step.name)
			if type(step.mob) == "table" then
				for _, mobName in ipairs(step.mob) do
					local mobProgress = "no progress"
					for i=1, GetNumQuestLogEntries() do
						local title = cleanQuestName(GetQuestLogTitle(i))
						if title == questName then
							local numObjectives = GetNumQuestLeaderBoards(i)
							for obj=1, numObjectives do
								local desc, type, done = GetQuestLogLeaderBoard(obj, i)
								if (type == "monster" or type == "object" or type == "item") and desc and mobName then
									local lowerDesc = string.lower(desc or "")
									local lowerMobName = string.lower(mobName or "")
									-- Prüfe ob der Mob-Name GENAU in der Beschreibung vorkommt
									if string.find(lowerDesc, lowerMobName, 1, true) then
										-- Zusätzliche Prüfung: Stelle sicher, dass es der richtige Mob ist
										local isExactMatch = false
										-- Prüfe verschiedene Formate
										if string.find(lowerDesc, "^" .. lowerMobName .. " ") or 
										   string.find(lowerDesc, "^" .. lowerMobName .. ":") or
										   string.find(lowerDesc, "^" .. lowerMobName .. " slain") or
										   string.find(lowerDesc, "^" .. lowerMobName .. " killed") then
											isExactMatch = true
										end
										
										if isExactMatch then
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
							if mobProgress ~= "no progress" then
								break
							end
						end
					end
					-- Debug-Ausgabe entfernt, nur Zahlen anzeigen
					local displayProgress = mobProgress
					if mobProgress ~= "no progress" then
						-- Extrahiere nur die Zahlen (z.B. "3/8") aus dem kompletten Text
						local startPos, endPos = string.find(mobProgress, "%d+/%d+")
						if startPos and endPos then
							displayProgress = string.sub(mobProgress, startPos, endPos)
						end
					end
					mainText = mainText .. "\n- " .. mobName .. ": " .. displayProgress
				end
			else
				local mobName = step.mob or ""
				local mobProgress = "(no progress)"
				for i=1, GetNumQuestLogEntries() do
					local title = cleanQuestName(GetQuestLogTitle(i))
					if title == questName then
						local numObjectives = GetNumQuestLeaderBoards(i)
						for obj=1, numObjectives do
							local desc, type, done = GetQuestLogLeaderBoard(obj, i)
							if (type == "monster" or type == "object" or type == "item") and desc and mobName and string.find(string.lower(desc or ""), string.lower(mobName or ""), 1, true) then
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
			mainText = mainText .. "\n|cff00ff00●|r|cffffff00Progress:|r"
			local questName = cleanQuestName(step.name)
			if type(step.item) == "table" then
				for _, itemName in ipairs(step.item) do
					local itemProgress = "(no progress)"
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
            local isCompleted = (type(ZaponiGuides_Progress.completedQuests) == "table" and step.quest) and ZaponiGuides_Progress.completedQuests[step.quest] or nil
            if isCompleted then
                mainText = mainText .. "\n|cff00ff00✓|r |cff00ff00Status: Erledigt|r"
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
                    mainText = mainText .. "\n|cff00ff00✓|r|cff00ff00Status: Accepted|r"
                else
                    mainText = mainText .. "\n|cffff0000✗|r|cffff0000Status: Not Accepted|r"
                end
            end
        end

        -- Status für 'turnin'-Schritte: Bereit zur Abgabe, Noch nicht fertig, oder Nicht im Log
        if step and step.action == "turnin" and step.quest then
            local isCompleted = (type(ZaponiGuides_Progress.completedQuests) == "table" and step.quest) and ZaponiGuides_Progress.completedQuests[step.quest] or nil
            if isCompleted then
                mainText = mainText .. "\n|cff00ff00✓|r |cff00ff00Status: Ready|r"
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
                    mainText = mainText .. "\n|cffff0000✗|r|cffff0000Status: Quest not in Log.|r"
                elseif questComplete then
                    mainText = mainText .. "\n|cff00ff00✓|r|cff00ff00Status: Ready.|r"
                else
                    mainText = mainText .. "\n|cffffff00○|r|cffffff00Status: Not Ready.|r"
                end
            end
        end
		-- TomTom-Kommandotext wird nicht mehr angezeigt
		guideText:SetText(deathStatus .. mainText)
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
		guideText:SetText(deathStatus .. "Kein Schritt vorhanden.")
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
nextButton:SetText("Next")
nextButton:SetScript("OnClick", function()
	local steps = guide and guide.steps or nil
	if steps and ZaponiGuides_Progress.currentStep < table.getn(steps) then
		ZaponiGuides_Progress.currentStep = ZaponiGuides_Progress.currentStep + 1
		updateGuideText()
	end
end)

local prevButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
prevButton:SetWidth(80)
prevButton:SetHeight(22)
prevButton:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 10, 10)
prevButton:SetText("Previous")
prevButton:SetScript("OnClick", function()
	local steps = guide and guide.steps or nil
	if steps and ZaponiGuides_Progress.currentStep > 1 then
		ZaponiGuides_Progress.currentStep = ZaponiGuides_Progress.currentStep - 1
		updateGuideText()
	end
end)
--------------------------
-- Load Guide Button
local loadGuideButton = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
loadGuideButton:SetWidth(90)
loadGuideButton:SetHeight(22)
loadGuideButton:SetPoint("BOTTOM", frame, "BOTTOM", 0, 10)
loadGuideButton:SetText("Load Guide")

-- Guide Selection Frame (initially hidden)
local guideSelectionFrame = CreateFrame("Frame", nil, UIParent)
guideSelectionFrame:SetWidth(300)
guideSelectionFrame:SetHeight(400)
guideSelectionFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
guideSelectionFrame:SetBackdrop({
	bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = {left = 4, right = 4, top = 4, bottom = 4}
})
guideSelectionFrame:SetBackdropColor(0,0,0,0.9)
guideSelectionFrame:SetBackdropBorderColor(0.8,0.8,0.8,1)
guideSelectionFrame:EnableMouse(true)
guideSelectionFrame:SetMovable(true)
guideSelectionFrame:RegisterForDrag("LeftButton")
guideSelectionFrame:SetScript("OnDragStart", function() guideSelectionFrame:StartMoving() end)
guideSelectionFrame:SetScript("OnDragStop", function() guideSelectionFrame:StopMovingOrSizing() end)
guideSelectionFrame:Hide()
guideSelectionFrame:SetFrameStrata("DIALOG")

-- Title for guide selection
local guideSelectionTitle = guideSelectionFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
guideSelectionTitle:SetPoint("TOP", guideSelectionFrame, "TOP", 0, -10)
guideSelectionTitle:SetText("Select Guide")

-- Close button for guide selection
local closeButton = CreateFrame("Button", nil, guideSelectionFrame, "UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT", guideSelectionFrame, "TOPRIGHT", -5, -5)
closeButton:SetScript("OnClick", function() guideSelectionFrame:Hide() end)

-- Scroll frame for guide list (WoW 1.12 compatible)
local scrollFrame = CreateFrame("ScrollFrame", "ZaponiGuidesScrollFrame", guideSelectionFrame, "UIPanelScrollFrameTemplate")
scrollFrame:SetPoint("TOPLEFT", guideSelectionFrame, "TOPLEFT", 10, -35)
scrollFrame:SetPoint("BOTTOMRIGHT", guideSelectionFrame, "BOTTOMRIGHT", -30, 10)

local scrollChild = CreateFrame("Frame", "ZaponiGuidesScrollChild", scrollFrame)
scrollChild:SetWidth(250)
scrollFrame:SetScrollChild(scrollChild)

-- Function to create guide selection buttons
local function createGuideButtons()
	local guideButtons = {}
	local yOffset = 0
	
	local guideList = {
		"Dun Morogh 1-11.lua","Undead 1-6.lua", "Durotar 1-12.lua", "Wetlands 24-27.lua", "Duskwood 28-30.lua",
		"Wetlands 30.lua", "Hillsbrad 30-31.lua", "Thousand Needles 31-32.lua", "Stranglethorn 32.lua",
		"Hillsbrad 32-33.lua", "Balor 33-34.lua", "Stranglethorn 36-37.lua", "Alterac 37-38.lua",
		"Arathi 38-39.lua", "Badlands 39-40.lua", "Stranglethorn 40-42.lua", "Swamp of Sorrows 42-43.lua",
		"Tanaris 43-44.lua", "Gilneas 44-46.lua", "Feralas 46-47.lua", "Hinterlands 47.lua",
		"Searing Gorge 47-49.lua", "Blasted Lands 49-50.lua", "Lapidis Isle 50-51.lua", "Tanaris 51-52.lua",
		"Feralas 52.lua", "Felwood 52-53.lua", "Azshara 53.lua", "Western Plaguelands 53-54.lua"
	}
	
	for i, filename in ipairs(guideList) do
		if guideMapping[filename] then -- Only show if guide exists
			local displayName = string.gsub(filename, "%.lua$", "")
			local button = CreateFrame("Button", nil, scrollChild, "UIPanelButtonTemplate")
			button:SetWidth(240)
			button:SetHeight(25)
			button:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 5, yOffset)
			button:SetText(displayName)
			
			-- Create local copy for closure (WoW 1.12 fix)
			local guideFilename = filename
			button:SetScript("OnClick", function()
				ZaponiGuides:LoadGuide(guideFilename)
				guideSelectionFrame:Hide()
			end)
			
			table.insert(guideButtons, button)
			yOffset = yOffset - 30
		end
	end
	
	scrollChild:SetHeight(math.abs(yOffset) + 10)
end

-- Load Guide Button click handler
loadGuideButton:SetScript("OnClick", function()
	createGuideButtons()
	guideSelectionFrame:Show()
end)
--------------------------

frame:SetScript("OnShow", updateGuideText)


local rawText = "Willkommen zu ZaponiGuides für TurtleWoW! Hier könnte Ihr Guide stehen. Dies ist ein Beispieltext, der automatisch umgebrochen wird, wenn er zu lang ist."


frame:SetScript("OnSizeChanged", updateGuideText)


-- Zeige das Fenster erst nach vollständigem Laden der Daten
local startupFrame = CreateFrame("Frame")
startupFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
startupFrame:SetScript("OnEvent", function()
	frame:Show()
	tryLoadLastGuide()
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
    DEFAULT_CHAT_FRAME:AddMessage("--- ZaponiGuides_Progress ---")
    PrintTable(ZaponiGuides_Progress)
end

--[[
DEFAULT_CHAT_FRAME:AddMessage("[ZaponiGuides] Addon geladen. Typ ZaponiGuides_Progress: "..type(ZaponiGuides_Progress))
if type(ZaponiGuides_Progress) == "table" then
    DEFAULT_CHAT_FRAME:AddMessage("[ZaponiGuides] completedQuests Typ: "..type(ZaponiGuides_Progress.completedQuests))
    if type(ZaponiGuides_Progress.completedQuests) == "table" then
        local keys = "[ZaponiGuides] completedQuests Keys (beim Laden): "
        for k, v in pairs(ZaponiGuides_Progress.completedQuests) do
            keys = keys .. "("..type(k)..":"..tostring(k)..") "
        end
        DEFAULT_CHAT_FRAME:AddMessage(keys)
    end
end


local startupFrame = CreateFrame("Frame")
startupFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
startupFrame:SetScript("OnEvent", function()
    if type(ZaponiGuides_Progress) ~= "table" then ZaponiGuides_Progress = {} end
    if ZaponiGuides_Progress.currentStep == nil then ZaponiGuides_Progress.currentStep = 1 end
    if ZaponiGuides_Progress.completedQuests == nil then ZaponiGuides_Progress.completedQuests = {} end
    -- RXPGuidesMVS_Progress.currentStep wurde bereits initialisiert
    DEFAULT_CHAT_FRAME:AddMessage("[ZaponiGuides] completedQuests nach PLAYER_ENTERING_WORLD Typ: "..type(ZaponiGuides_Progress.completedQuests))
    local keys = "[ZaponiGuides] completedQuests Keys (nach Event): "
    for k, v in pairs(ZaponiGuides_Progress.completedQuests) do
        keys = keys .. "("..type(k)..":"..tostring(k)..") "
    end
    DEFAULT_CHAT_FRAME:AddMessage(keys)
    -- Event-Frame für Quest-Abgabe jetzt initialisieren
    local eventFrame = CreateFrame("Frame")
    eventFrame:RegisterEvent("QUEST_TURNED_IN")
    eventFrame:RegisterEvent("PLAYER_DEAD")
    eventFrame:RegisterEvent("PLAYER_ALIVE")
    eventFrame:RegisterEvent("PLAYER_UNGHOST")
    eventFrame:SetScript("OnEvent", function(self, event)
        if event == "QUEST_TURNED_IN" then
            local questName = GetTitleText()
            if questName and type(guide) == "table" and type(guide.steps) == "table" then
                local step = guide.steps[ZaponiGuides_Progress.currentStep]
                if step and step.action == "turnin" and step.name == questName and step.quest then
                    ZaponiGuides_Progress.completedQuests[step.quest] = true
                end
            end
        elseif event == "PLAYER_DEAD" then
            DEFAULT_CHAT_FRAME:AddMessage("|cffff0000[ZaponiGuides] Du bist gestorben! RIP|r")
            -- Optional: Guide-Text mit Tod-Hinweis erweitern
            if ZaponiGuides_Progress then
                ZaponiGuides_Progress.isDead = true
            end
            updateGuideText()
        elseif event == "PLAYER_ALIVE" or event == "PLAYER_UNGHOST" then
            DEFAULT_CHAT_FRAME:AddMessage("|cff00ff00[ZaponiGuides] Du lebst wieder! Willkommen zurück!|r")
            -- Tod-Status zurücksetzen
            if ZaponiGuides_Progress then
                ZaponiGuides_Progress.isDead = false
            end
            updateGuideText()
        end
    end)
    frame:Show()
    updateGuideText()
    startupFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")
end)
--]]