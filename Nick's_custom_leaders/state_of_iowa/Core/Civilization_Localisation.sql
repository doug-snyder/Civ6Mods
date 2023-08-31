/*
	MisterShake2099 (MS2099)
	Civilization_Localisation.sql
*/

--------------------------------------------------------------------------------
INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES


--------------------------------------------------------------------------------
-- CIVILIZATION
--------------------------------------------------------------------------------
	('en_US', 'LOC_CIVILIZATION_MS2099_CIVNAME_NAME', 'Civname'),
	('en_US', 'LOC_CIVILIZATION_MS2099_CIVNAME_DESCRIPTION', 'Civname_Empire'),
	('en_US', 'LOC_CIVILIZATION_MS2099_CIVNAME_ADJECTIVE', 'Civname'),
	

--------------------------------------------------------------------------------
-- CIVILIZATION UNIQUE ABILITY
--------------------------------------------------------------------------------
	('en_US', 'LOC_TRAIT_CIVILIZATION_MS2099_CIVTRAIT_NAME', 'Civtrait_Name.'),
	('en_US', 'LOC_TRAIT_CIVILIZATION_MS2099_CIVTRAIT_DESCRIPTION', 'Civtrait_Description [ICON_Food] [ICON_Faith].'),


--------------------------------------------------------------------------------
-- CIVILIZATION UNIQUE INFRASTRUCTURE/IMPROVEMENT
--------------------------------------------------------------------------------
	('en_US', 'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_NAME', 'Civimprovement_Name'),
	('en_US', 'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_DESCRIPTION', 'Civimprovement_Description.'),


--------------------------------------------------------------------------------
-- CIVILIZATION UNIQUE UNIT
--------------------------------------------------------------------------------
	('en_US', 'LOC_UNIT_MS2099_CIVUNIT_NAME', 'CivUnit_Name'),
	('en_US', 'LOC_UNIT_MS2099_CIVUNIT_DESCRIPTION', 'CivUnit_Description.'),
	('en_US', 'LOC_ABILITY_MS2099_CIVUNIT', 'CivUnit_Ability.'),


--------------------------------------------------------------------------------
-- MOUNTAINS
--------------------------------------------------------------------------------
	('en_US', 'LOC_NAMED_MOUNTAIN_CIVMOUNTAIN', 'Civ_Mountain'),


--------------------------------------------------------------------------------
-- RIVERS
--------------------------------------------------------------------------------
	('en_US', 'LOC_NAMED_RIVER_CIVRIVER', 'Civ_River'),


--------------------------------------------------------------------------------
-- LAKES
--------------------------------------------------------------------------------
	('en_US', 'LOC_NAMED_LAKE_CIVLAKE', 'Civ_Lake'),


--------------------------------------------------------------------------------
-- DESERTS
--------------------------------------------------------------------------------
	('en_US', 'LOC_NAMED_DESERT_CIVDESERT', 'Civ_Desert'),


--------------------------------------------------------------------------------
-- VOLCANOES
--------------------------------------------------------------------------------
	('en_US', 'LOC_NAMED_VOLCANO_CIVVOLCANO', 'Civ_Volcano'),


--------------------------------------------------------------------------------
-- CITIES
--------------------------------------------------------------------------------
	('en_US', 'LOC_CITY_NAME_MS2099_CIVNAME_1', 'City_Name_1'),
	

--------------------------------------------------------------------------------
-- CITIZENS
--------------------------------------------------------------------------------
	('en_US', 'LOC_CITIZEN_MS2099_CIVNAME_MALE_1', 'Civname_Citizen_Male_1'),
	('en_US', 'LOC_CITIZEN_MS2099_CIVNAME_FEMALE_1', 'Civname_Citizen_Female_1'),
	

--------------------------------------------------------------------------------
-- INFO
--------------------------------------------------------------------------------
	('en_US', 'LOC_CIVINFO_MS2099_CIVNAME_LOCATION', 'Civ_Location'),
	('en_US', 'LOC_CIVINFO_MS2099_CIVNAME_SIZE', 'Civ_Size_(km)'),
	('en_US', 'LOC_CIVINFO_MS2099_CIVNAME_POPULATION', 'Civ_Population'),
	('en_US', 'LOC_CIVINFO_MS2099_CIVNAME_CAPITAL', 'Civ_Capital'),


--------------------------------------------------------------------------------
-- CIVILOPEDIA
--------------------------------------------------------------------------------
	('en_US', 'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_1',
			  'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_1.'),
	('en_US', 'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_2',
			  'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_2.'),


--------------------------------------------------------------------------------
-- UNIQUE UNIT/BUILDING/IMPROVEMENT CIVILOPEDIA ENTRY
	-- LOC_PEDIA_UNITS_PAGE_UNIT_PREFIX_CIVNAME_UU_CHAPTER_HISTORY_PARA_X
	-- LOC_PEDIA_BUILDINGS_PAGE_BUILDING_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X
	-- LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X
--------------------------------------------------------------------------------
	('en_US', 'LOC_PEDIA_UNITS_PAGE_UNIT_MS2099_CIVNAME_UU_CHAPTER_HISTORY_PARA_1',
			  'LOC_PEDIA_UNITS_PAGE_UNIT_MS2099_CIVNAME_UU_CHAPTER_HISTORY_PARA_1.');
