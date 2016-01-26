SCHEMA.name = "Military RP (WIP)"
SCHEMA.introname = "Military RP (WIP)"
SCHEMA.author = "ChazNN"
SCHEMA.desc = "A Serious Military RP"

function SCHEMA:isArmyFaction(faction)
	return faction == FACTION_ARMY or faction == FACTION_ARMYCOMMAND
end

function SCHEMA:isNavyFaction(faction)
	return faction == FACTION_NAVY or faction == FACTION_NAVYCOMMAND
end

function SCHEMA:isMarineFaction(faction)
	return faction == FACTION_MARINE or faction == FACTION_MARINECOMMAND
end

function SCHEMA:isAirForceFaction(faction)
	return faction == FACTION_AF or faction == FACTION_AFCOMMAND
end


do
	local playerMeta = FindMetaTable("Player")

	function playerMeta:isArmy()
		return SCHEMA:isArmyFaction(self:Team())
	end

	function playerMeta:isNavy()
		return SCHEMA:isNavyFaction(self:Team())
	end

	function playerMeta:isMarine()
		return SCHEMA:isMarineFaction(self:Team())
	end

	function playerMeta:isAirForce()
		return SCHEMA:isAirForceFaction(self:Team())
	end

	function playerMeta:getArmyRank()
		local name = self:Name()

		for k, v in ipairs(SCHEMA.rctRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.enlistedRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.ncoRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.officerRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end
	end

	function playerMeta:getNavyRank()
		local name = self:Name()

		for k, v in ipairs(SCHEMA.rctRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.enlistedRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.ncoRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.officerRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end
	end

	function playerMeta:getMarineRank()
		local name = self:Name()

		for k, v in ipairs(SCHEMA.rctRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.enlistedRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.ncoRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.officerRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end
	end

	function playerMeta:getAirforceRank()
		local name = self:Name()

		for k, v in ipairs(SCHEMA.rctRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.enlistedRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.ncoRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end

		for k, v in ipairs(SCHEMA.officerRanks) do
			local rank = string.PatternSafe(v)

			if (name:find("[%D+]"..rank.."[%D+]")) then
				return v
			end
		end
	end

	function playerMeta:isArmyRank(rank)
		if (type(rank) == "table") then
			local name = self:Name()

			for k, v in ipairs(rank) do
				local rank = string.PatternSafe(v)

				if (name:find("[%D+]"..rank.."[%D+]")) then
					return v
				end				
			end

			return false
		else
			return self:getArmyRank() == rank
		end
	end

	function playerMeta:isNavyRank(rank)
		if (type(rank) == "table") then
			local name = self:Name()

			for k, v in ipairs(rank) do
				local rank = string.PatternSafe(v)

				if (name:find("[%D+]"..rank.."[%D+]")) then
					return v
				end				
			end

			return false
		else
			return self:getNavyRank() == rank
		end
	end

	function playerMeta:isMarineRank(rank)
		if (type(rank) == "table") then
			local name = self:Name()

			for k, v in ipairs(rank) do
				local rank = string.PatternSafe(v)

				if (name:find("[%D+]"..rank.."[%D+]")) then
					return v
				end				
			end

			return false
		else
			return self:getMarineRank() == rank
		end
	end

	function playerMeta:isAirforceRank(rank)
		if (type(rank) == "table") then
			local name = self:Name()

			for k, v in ipairs(rank) do
				local rank = string.PatternSafe(v)

				if (name:find("[%D+]"..rank.."[%D+]")) then
					return v
				end				
			end

			return false
		else
			return self:getAirForceRank() == rank
		end
	end

	function playerMeta:getArmyRank()
		for k, v in ipairs(team.GetPlayers(FACTION_ARMY)) do
			local commanderRanks = string.Explode(",", nut.config.get("rankCommander", "RCT"):gsub("%s", ""))
			local officerRanks = string.Explode(",", nut.config.get("rankOfficer", "RCT"):gsub("%s", ""))
			local ncoRanks = string.Explode(",", nut.config.get("rankNco", "RCT"):gsub("%s", ""))
			local enlistedRanks = string.Explode(",", nut.config.get("rankEnlisted", "RCT"):gsub("%s", ""))
			local name = string.PatternSafe(v:Name())

			for k, v in ipairs(commandRanks) do
				if (name:find(v)) then
					return CLASS_ARMY_COMMAND
				end
			end

			for k, v in ipairs(officerRanks) do
				if (name:find(v)) then
					return CLASS_ARMY_OFFICER
				end
			end

			for k, v in ipairs(enlistedRanks) do
				if (name:find(v)) then
					return CLASS_ARMY_ENLISTED
				end
			end

			for k, v in ipairs(ncoRanks) do
				if (name:find(v)) then
					return CLASS_ARMY_NCO
				end
			end

			return CLASS_ARMY_RCT
		end
	end

	function playerMeta:getNavyRank()
		for k, v in ipairs(team.GetPlayers(FACTION_NAVY)) do
			local commanderRanks = string.Explode(",", nut.config.get("rankCommander", "RCT"):gsub("%s", ""))
			local officerRanks = string.Explode(",", nut.config.get("rankOfficer", "RCT"):gsub("%s", ""))
			local ncoRanks = string.Explode(",", nut.config.get("rankNco", "RCT"):gsub("%s", ""))
			local enlistedRanks = string.Explode(",", nut.config.get("rankEnlisted", "RCT"):gsub("%s", ""))
			local name = string.PatternSafe(v:Name())

			for k, v in ipairs(commandRanks) do
				if (name:find(v)) then
					return CLASS_NAVY_COMMANDER
				end
			end

			for k, v in ipairs(officerRanks) do
				if (name:find(v)) then
					return CLASS_NAVY_OFFICER
				end
			end


			for k, v in ipairs(ncoRanks) do
				if (name:find(v)) then
					return CLASS_NAVY_NCO
				end
			end

			for k, v in ipairs(enlistedRanks) do
				if (name:find(v)) then
					return CLASS_NAVY_ENLISTED
				end
			end

			return CLASS_NAVY_RCT
		end
	end

	function playerMeta:getMarineRank()
		for k, v in ipairs(team.GetPlayers(FACTION_MARINE)) do
			local commanderRanks = string.Explode(",", nut.config.get("rankCommander", "RCT"):gsub("%s", ""))
			local officerRanks = string.Explode(",", nut.config.get("rankOfficer", "RCT"):gsub("%s", ""))
			local ncoRanks = string.Explode(",", nut.config.get("rankNco", "RCT"):gsub("%s", ""))
			local enlistedRanks = string.Explode(",", nut.config.get("rankEnlisted", "RCT"):gsub("%s", ""))
			local name = string.PatternSafe(v:Name())

			for k, v in ipairs(commandRanks) do
				if (name:find(v)) then
					return CLASS_MARINE_COMMANDER
				end
			end

			for k, v in ipairs(officerRanks) do
				if (name:find(v)) then
					return CLASS_MARINE_OFFICER
				end
			end

			for k, v in ipairs(ncoRanks) do
				if (name:find(v)) then
					return CLASS_MARINE_NCO
				end
			end

			for k, v in ipairs(enlistedRanks) do
				if (name:find(v)) then
					return CLASS_MARINE_ENLISTED
				end
			end

			return CLASS_MARINE_RCT
		end
	end

	function playerMeta:getAirforceRank()
		for k, v in ipairs(team.GetPlayers(FACTION_AF)) do
			local officerRanks = string.Explode(",", nut.config.get("rankCommander", "RCT"):gsub("%s", ""))
			local officerRanks = string.Explode(",", nut.config.get("rankOfficer", "RCT"):gsub("%s", ""))
			local ncoRanks = string.Explode(",", nut.config.get("rankNco", "RCT"):gsub("%s", ""))
			local enlistedRanks = string.Explode(",", nut.config.get("rankEnlisted", "RCT"):gsub("%s", ""))
			local name = string.PatternSafe(v:Name())
			for k, v in ipairs(commandRanks) do
				if (name:find(v)) then
					return CLASS_AF_COMMANDER
				end
			end

			for k, v in ipairs(officerRanks) do
				if (name:find(v)) then
					return CLASS_AF_OFFICER
				end
			end

			for k, v in ipairs(ncoRanks) do
				if (name:find(v)) then
					return CLASS_AF_NCO
				end
			end

			for k, v in ipairs(enlistedRanks) do
				if (name:find(v)) then
					return CLASS_AF_ENLISTED
				end
			end

			return CLASS_AF_RCT
		end
	end

	function SCHEMA:isDispatch(client)
		return client:isArmyRank(self.officerRanks) or client:isArmyRank(self.commandRanks)
	end

	function SCHEMA:isDispatch(client)
		return client:isNavyRank(self.officerRanks)
	end

	function SCHEMA:isDispatch(client)
		return client:isMarineRank(self.officerRanks)
	end

	function SCHEMA:isDispatch(client)
		return client:isAirForceRank(self.officerRanks)
	end

	function playerMeta:getDigits()
		if (self:isCombine()) then
			local name = self:Name():reverse()
			local digits = name:match("(%d+)")

			if (digits) then
				return tostring(digits):reverse()
			end
		end

		return "UNKNOWN"
	end

	if (SERVER) then
		function playerMeta:addDisplay(text, color)
			if (self:isCombine()) then
				netstream.Start(self, "cDisp", text, color)
			end
		end

		function SCHEMA:addDisplay(text, color)
			local receivers = {}

			for k, v in ipairs(player.GetAll()) do
				if (v:isCombine()) then
					receivers[#receivers + 1] = v
				end
			end

			netstream.Start(receivers, "cDisp", text, color)
		end
	end
end

nut.util.include("sh_config.lua")
nut.util.include("sh_commands.lua")
nut.util.includeDir("hooks")

if (SERVER) then
	SCHEMA.objectives = SCHEMA.objectives or ""
	
	concommand.Add("nut_setupnexusdoors", function(client, command, arguments)
		if (!IsValid(client)) then
			if (!nut.plugin.list.doors) then
				return MsgN("[NutScript] Door plugin is missing!")
			end

			local name = table.concat(arguments, " ")

			for _, entity in ipairs(ents.FindByClass("func_door")) do
				if (!entity:HasSpawnFlags(256) and !entity:HasSpawnFlags(1024)) then
					entity:setNetVar("noSell", true)
					entity:setNetVar("name", !name:find("%S") and "Nexus" or name)
				end
			end

			nut.plugin.list.doors:SaveDoorData()

			MsgN("[NutScript] Nexus doors have been set up.")
		end
	end)
end

for k, v in pairs(SCHEMA.beepSounds) do
	for k2, v2 in ipairs(v.on) do
		util.PrecacheSound(v2)
	end

	for k2, v2 in ipairs(v.off) do
		util.PrecacheSound(v2)
	end
end

for k, v in pairs(SCHEMA.deathSounds) do
	for k2, v2 in ipairs(v) do
		util.PrecacheSound(v2)
	end
end

for k, v in pairs(SCHEMA.painSounds) do
	for k2, v2 in ipairs(v) do
		util.PrecacheSound(v2)
	end
end

for k, v in pairs(SCHEMA.rankModels) do
	nut.anim.SetModelClass(v, "metrocop")
	player_manager.AddValidModel("combine", v)

	util.PrecacheModel(v)
end

nut.util.include("sh_voices.lua")

if (SERVER) then
	function SCHEMA:saveObjectives()
		nut.data.set("objectives", self.objectives, false, true)
	end

	function SCHEMA:saveVendingMachines()
		local data = {}

		for k, v in ipairs(ents.FindByClass("nut_vendingm")) do
			data[#data + 1] = {v:GetPos(), v:GetAngles(), v:getNetVar("stocks"), v:getNetVar("active")}
		end

		nut.data.set("vendingm", data)
	end

	function SCHEMA:saveDispensers()
		local data = {}

		for k, v in ipairs(ents.FindByClass("nut_dispenser")) do
			data[#data + 1] = {v:GetPos(), v:GetAngles(), v:GetDisabled() == true and true or nil}
		end

		nut.data.set("dispensers", data)
	end

	function SCHEMA:loadObjectives()
		self.objectives = nut.data.get("objectives", "", false, true)
	end

	function SCHEMA:loadVendingMachines()
		local data = nut.data.get("vendingm") or {}

		for k, v in ipairs(data) do
			local entity = ents.Create("nut_vendingm")
			entity:SetPos(v[1])
			entity:SetAngles(v[2])
			entity:Spawn()
			entity:setNetVar("stocks", v[3] or {})
			entity:setNetVar("active", v[4])
		end
	end

	function SCHEMA:loadDispensers()
		for k, v in ipairs(nut.data.get("dispensers") or {}) do
			local entity = ents.Create("nut_dispenser")
			entity:SetPos(v[1])
			entity:SetAngles(v[2])
			entity:Spawn()

			if (v[3]) then
				entity:SetDisabled(true)
			end
		end
	end
end

nut.chat.register("dispatch", {
	color = Color(192, 57, 43),
	onCanSay = function(client)
		if (!SCHEMA:isDispatch(client)) then
			client:notifyLocalized("notAllowed")

			return false
		end
	end,
	onChatAdd = function(speaker, text)
		chat.AddText(Color(192, 57, 43), L("icFormat", "Dispatch", text))
	end,
	prefix = {"/dispatch"}
})

nut.chat.register("request", {
	color = Color(210, 77, 87),
	onChatAdd = function(speaker, text)
		chat.AddText(Color(210, 77, 87), text)
	end,
	onCanHear = function(speaker, listener)
		return listener:isCombine()
	end
})

nut.flag.add("y", "Access to the light blackmarket items.")
nut.flag.add("Y", "Access to the heavy blackmarket items.")

nut.currency.set("", "token", "tokens")

--marines
nut.anim.SetModelClass("models/player/pmc_3/pmc__05.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_3/pmc__07.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_3/pmc__03.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_5/pmc__01.mdl", "metrocop")

--army
nut.anim.SetModelClass("models/player/pmc_6/pmc__05.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_6/pmc__07.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_6/pmc__03.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_6/pmc__01.mdl", "metrocop")

--navy
nut.anim.SetModelClass("models/player/pmc_1/pmc__08.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_1/pmc__07.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_1/pmc__03.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_1/pmc__01.mdl", "metrocop")

--air force
nut.anim.SetModelClass("metrocop", "models/player/pmc_3/pmc__10.mdl")
nut.anim.SetModelClass("models/player/pmc_3/pmc__07.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_3/pmc__03.mdl", "metrocop")
nut.anim.SetModelClass("models/player/pmc_3/pmc__01.mdl", "metrocop")

--marines
nut.anim.setModelClass("models/player/pmc_3/pmc__05.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_3/pmc__07.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_3/pmc__03.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_5/pmc__01.mdl", "metrocop")

--army
nut.anim.setModelClass("models/player/pmc_6/pmc__05.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_6/pmc__07.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_6/pmc__03.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_6/pmc__01.mdl", "metrocop")

--navy
nut.anim.setModelClass("models/player/pmc_1/pmc__08.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_1/pmc__07.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_1/pmc__03.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_1/pmc__01.mdl", "metrocop")

--air force
nut.anim.setModelClass("metrocop", "models/player/pmc_3/pmc__10.mdl")
nut.anim.setModelClass("models/player/pmc_3/pmc__10.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_3/pmc__07.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_3/pmc__03.mdl", "metrocop")
nut.anim.setModelClass("models/player/pmc_3/pmc__01.mdl", "metrocop")