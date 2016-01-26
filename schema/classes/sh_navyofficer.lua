CLASS.name = "Navy Officer"
CLASS.desc = "You are a commissioned officer in the United States Navy"
CLASS.faction = FACTION_NAVY

function CLASS:onCanBe(client)
	return client:isNavyRank(SCHEMA.officerRanks)
end

CLASS_NAVY_OFFICER = CLASS.index