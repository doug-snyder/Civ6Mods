/*
	Core Leader Configuration
	Authors: MC
*/

-----------------------------------------------
-- Players (Base Game / Vanilla)

-- The below section instructs the game to make this leader available as a selection when running the base-game ruleset.

-- Every value inserted into the Players table is locally-defined in this mod - if working through 'in order' these should all be familiar by this stage.

-- Please note: this is commented-out, as this example is only compatible with Gathering Storm and above. I've left this in as an example.
-----------------------------------------------

--INSERT INTO Players (CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
--VALUES	(	
		-- Civilization
--		'CIVILIZATION_MRSHAKE_CIVNAME',	-- CivilizationType
--		'LOC_CIVILIZATION_MRSHAKE_CIVNAME_NAME', -- CivilizationName
--		'ICON_CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationIcon
--		'LOC_TRAIT_CIVILIZATION_MRSHAKE_CIVTRAIT_NAME', -- CivilizationAbilityName
--		'LOC_TRAIT_CIVILIZATION_MRSHAKE_CIVTRAIT_DESCRIPTION', -- CivilizationAbilityDescription
--		'ICON_CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationAbilityIcon
		
		-- Leader
--		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
--		'LOC_LEADER_MRSHAKE_CIVLEADER_NAME', -- LeaderName
--		'ICON_LEADER_MRSHAKE_CIVLEADER', -- LeaderIcon (Portrait)
--		'LOC_TRAIT_LEADER_MRSHAKE_LEADERTRAIT_NAME', -- LeaderAbilityName
--		'LOC_TRAIT_LEADER_MRSHAKE_LEADERTRAIT_DESCRIPTION', -- LeaderAbilityDescription
--		'ICON_LEADER_MRSHAKE_CIVLEADER' -- LeaderAbilityIcon
--		);

-----------------------------------------------
-- Players (Rise & Fall)

-- The below section instructs the game to make this leader available as a selection when running the Rise & Fall ruleset.

-- This is identical to the above, except for the additional Domain value - which instructs the game to which expansion this leader becomes available.

-- Please note: this is commented-out, as this example is only compatible with Gathering Storm and above. I've left this in as an example.
-----------------------------------------------

--INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
--VALUES	(	
		-- Civilization
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
--		'LOC_CIVILIZATION_MRSHAKE_CIVNAME_NAME', -- CivilizationName
--		'ICON_CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationIcon
--		'LOC_TRAIT_CIVILIZATION_MRSHAKE_CIVTRAIT_NAME', -- CivilizationAbilityName
--		'LOC_TRAIT_CIVILIZATION_MRSHAKE_CIVTRAIT_DESCRIPTION', -- CivilizationAbilityDescription
--		'ICON_CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationAbilityIcon
		
		-- Leader
--		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
--		'LOC_LEADER_MRSHAKE_CIVLEADER_NAME', -- LeaderName
--		'ICON_LEADER_MRSHAKE_CIVLEADER', -- LeaderIcon (Portrait)
--		'LOC_TRAIT_LEADER_MRSHAKE_LEADERTRAIT_NAME', -- LeaderAbilityName
--		'LOC_TRAIT_LEADER_MRSHAKE_LEADERTRAIT_DESCRIPTION', -- LeaderAbilityDescription
--		'ICON_LEADER_MRSHAKE_CIVLEADER' -- LeaderAbilityIcon
--		);

-----------------------------------------------
-- Players (Gathering Storm)

-- The below section instructs the game to make this leader available as a selection when running the Gathering Storm ruleset.

-- This is identical to the Rise & Fall entry, directly above - though in this case, the Domain is Players:Expansion2_Players, which refers to Gathering Storm.
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
VALUES	(	
		-- Civilization
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
		'LOC_CIVILIZATION_MRSHAKE_CIVNAME_NAME', -- CivilizationName
		'ICON_CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_MRSHAKE_CIVTRAIT_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_MRSHAKE_CIVTRAIT_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
		'LOC_LEADER_MRSHAKE_CIVLEADER_NAME', -- LeaderName
		'ICON_LEADER_MRSHAKE_CIVLEADER', -- LeaderIcon (Portrait)
		'LOC_TRAIT_LEADER_MRSHAKE_LEADERTRAIT_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_MRSHAKE_LEADERTRAIT_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_MRSHAKE_CIVLEADER' -- LeaderAbilityIcon
		);

-----------------------------------------------
-- PlayerItems (Base Game / Vanilla)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- As above, I have commented-out this section as this template requires the Gathering Storm expansion.
-----------------------------------------------

--INSERT INTO PlayerItems
--		(CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
--VALUES	(
--		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
--		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
--		'UNIT_MRSHAKE_CIVUNIT', -- Type
--		'ICON_UNIT_MRSHAKE_CIVUNIT', -- Icon
--		'LOC_UNIT_MRSHAKE_CIVUNIT_NAME', -- Name
--		'LOC_UNIT_MRSHAKE_CIVUNIT_DESCRIPTION', -- Description
--		10	-- SortIndex
--		),
--		
--		(
--		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
--		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
--		'IMPROVEMENT_CIVIMPROVEMENT', -- Type
--		'ICON_IMPROVEMENT_CIVIMPROVEMENT', -- Icon
--		'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_NAME', -- Name
--		'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_DESCRIPTION', -- Description
--		20 -- SortIndex
--		);
		
-----------------------------------------------
-- PlayerItems (Rise & Fall)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- Identical to the base-game version, except for the added Domain property that indicates the ruleset of the active Expansion.

-- Again, this is commented-out as this template requires the Gathering Storm expansion.
-----------------------------------------------

--INSERT INTO PlayerItems
--		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
--VALUES	(
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
--		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
--		'UNIT_MRSHAKE_CIVUNIT', -- Type
--		'ICON_UNIT_MRSHAKE_CIVUNIT', -- Icon
--		'LOC_UNIT_MRSHAKE_CIVUNIT_NAME', -- Name
--		'LOC_UNIT_MRSHAKE_CIVUNIT_DESCRIPTION', -- Description
--		10	-- SortIndex
--		),
--		
--		(
--		'Players:Expansion1_Players', -- Domain
--		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
--		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
--		'IMPROVEMENT_CIVIMPROVEMENT', -- Type
--		'ICON_IMPROVEMENT_CIVIMPROVEMENT', -- Icon
--		'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_NAME', -- Name
--		'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_DESCRIPTION', -- Description
--		20 -- SortIndex
--		);

-----------------------------------------------
-- PlayerItems (Gathering Storm)

-- These sections associate the PlayerItems with the CivilizationType and LeaderType and also primarily drive the display on certain screens (Loading Screen & Diplomacy Screen).

-- Identical to the base-game version, except for the added Domain property that indicates the ruleset of the active Expansion.
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, CivilizationType, LeaderType, Type, Icon, Name, Description, SortIndex	)
VALUES	(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
		'UNIT_MRSHAKE_CIVUNIT', -- Type
		'ICON_UNIT_MRSHAKE_CIVUNIT', -- Icon
		'LOC_UNIT_MRSHAKE_CIVUNIT_NAME', -- Name
		'LOC_UNIT_MRSHAKE_CIVUNIT_DESCRIPTION', -- Description
		10	-- SortIndex
		),
		
		(
		'Players:Expansion2_Players', -- Domain
		'CIVILIZATION_MRSHAKE_CIVNAME', -- CivilizationType
		'LEADER_MRSHAKE_CIVLEADER', -- LeaderType
		'IMPROVEMENT_CIVIMPROVEMENT', -- Type
		'ICON_IMPROVEMENT_CIVIMPROVEMENT', -- Icon
		'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_NAME', -- Name
		'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_DESCRIPTION', -- Description
		20 -- SortIndex
		);