/*
	MisterShake2099 (MS2099)
	Civilization_Config.sql
*/

--------------------------------------------------------------------------------
-- TYPES
-- This inserts the civilization reference into the primary Data Types table as a playable Civilization.
--------------------------------------------------------------------------------
INSERT INTO	Types
		(Type, Kind)
VALUES	('CIVILIZATION_MS2099_STATE_OF_IOWA', 'KIND_CIVILIZATION');
	
		
--------------------------------------------------------------------------------
-- CIVILIZATIONS
-- Ethnicity: ETHNICITY_[AFRICAN; ASIAN; EURO; MEDIT; SOUTHAM]
--------------------------------------------------------------------------------
INSERT INTO	Civilizations
		(CivilizationType, Name, Description, Adjective,
			StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
VALUES	(
		'CIVILIZATION_MS2099_CIVNAME',
		'LOC_CIVILIZATION_MS2099_CIVNAME_NAME',
		'LOC_CIVILIZATION_MS2099_CIVNAME_DESCRIPTION',
		'LOC_CIVILIZATION_MS2099_CIVNAME_ADJECTIVE',
		'CIVILIZATION_LEVEL_FULL_CIV',
		5,
		'ETHNICITY_EURO'
		);


--------------------------------------------------------------------------------
-- NAMED MOUNTAINS
--------------------------------------------------------------------------------
REPLACE INTO NamedMountains
		(NamedMountainType, Name)
VALUES	('NAMED_MOUNTAIN_HAWKEYE_POINT', 'LOC_NAMED_MOUNTAIN_HAWKEYE_POINT'),
		('NAMED_MOUNTAIN_OCHEYEDAN_MOUNT', 'LOC_NAMED_MOUNTAIN_OCHEYEDAN_MOUNT');


--------------------------------------------------------------------------------
-- NAMED MOUNTAIN CIVILIZATIONS
--------------------------------------------------------------------------------
INSERT INTO NamedMountainCivilizations
		(CivilizationType, NamedMountainType)
VALUES	('CIVILIZATION_MS2099_STATE_OF_IOWA', 'NAMED_MOUNTAIN_HAWKEYE_POINT');


--------------------------------------------------------------------------------
-- NAMED RIVERS
--------------------------------------------------------------------------------
REPLACE INTO NamedRivers
		(NamedRiverType, Name)
VALUES	('NAMED_IOWA_RIVER', 'LOC_NAMED_IOWA_RIVER'),
		('NAMED_MIDDLE_RACCOON_RIVER', 'LOC_NAMED_MIDDLE_RACCOON_RIVER');


--------------------------------------------------------------------------------
-- NAMED RIVER CIVILIZATIONS
--------------------------------------------------------------------------------
INSERT INTO NamedRiverCivilizations
		(CivilizationType, NamedRiverType)
VALUES	('CIVILIZATION_MS2099_STATE_OF_IOWA', 'NAMED_IOWA_RIVER'),
		('CIVILIZATION_MS2099_STATE_OF_IOWA', 'NAMED_MIDDLE_RACCOON_RIVER');


--------------------------------------------------------------------------------
-- NAMED LAKES
--------------------------------------------------------------------------------
INSERT OR REPLACE INTO NamedLakes
		(NamedLakeType, Name)
VALUES	('NAMED_OKOBOJI_LAKE', 'LOC_NAMED_OKOBOJI_LAKE'),
		('NAMED_BIG_SPIRIT_LAKE', 'LOC_NAMED_BIG_SPIRIT_LAKE');


--------------------------------------------------------------------------------
-- NAMED LAKE CIVILIZATIONS
--------------------------------------------------------------------------------
INSERT INTO NamedLakeCivilizations
		(CivilizationType, NamedLakeType)
VALUES	('CIVILIZATION_MS2099_STATE_OF_IOWA', 'NAMED_LAKE_OKOBOJI_LAKE'),
VALUES	('CIVILIZATION_MS2099_STATE_OF_IOWA', 'NAMED_LAKE_BIG_SPIRIT_LAKE');


--------------------------------------------------------------------------------
-- NAMED SEAS
--------------------------------------------------------------------------------
INSERT OR IGNORE INTO NamedSeas
		(NamedSeaType, Name)
VALUES	('NAMED_SEA_CIVSEA', 'LOC_NAMED_SEA_CIVSEA');


--------------------------------------------------------------------------------
-- NAMED SEA CIVILIZATIONS
--------------------------------------------------------------------------------
INSERT INTO NamedSeaCivilizations
		(CivilizationType, NamedSeaType)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'NAMED_SEA_CIVSEA');


--------------------------------------------------------------------------------
-- NAMED DESERTS
--------------------------------------------------------------------------------
REPLACE INTO NamedDeserts
		(NamedDesertType, Name)
VALUES	('NAMED_DESERT_CIVDESERT', 'LOC_NAMED_DESERT_CIVDESERT');


--------------------------------------------------------------------------------
-- NAMED DESERT CIVILIZATIONS
--------------------------------------------------------------------------------
INSERT INTO NamedDesertCivilizations
		(CivilizationType, NamedDesertType)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'NAMED_DESERT_CIVDESERT');


--------------------------------------------------------------------------------
-- NAMED VOLCANOES
--------------------------------------------------------------------------------
REPLACE INTO NamedVolcanoes
		(NamedVolcanoType, Name)
VALUES	('NAMED_VOLCANO_CIVVOLCANO', 'LOC_NAMED_VOLCANO_CIVVOLCANO');


--------------------------------------------------------------------------------
-- NAMED VOLCANO CIVILIZATIONS
--------------------------------------------------------------------------------
INSERT INTO NamedVolcanoCivilizations
		(CivilizationType, NamedVolcanoType)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'NAMED_VOLCANO_CIVVOLCANO');


--------------------------------------------------------------------------------
-- CITY NAMES
--------------------------------------------------------------------------------
INSERT INTO	CityNames
		(CivilizationType, CityName)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'LOC_CITY_NAME_MS2099_CIVCITY_1');


--------------------------------------------------------------------------------
-- CIVILIATION CITIZEN NAMES
-- e.g. LOC_CITIZEN_MS2099_CIVNAME_MALE_1
-- e.g. LOC_CITIZEN_MS2099_CIVNAME_MODERN_MALE_1
--------------------------------------------------------------------------------
INSERT INTO	CivilizationCitizenNames
		(CivilizationType, CitizenName, Female)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'LOC_CITIZEN_MS2099_CIVNAME_MALE_1', 0),
		('CIVILIZATION_MS2099_CIVNAME',	'LOC_CITIZEN_MS2099_CIVNAME_FEMALE_1', 1);


--------------------------------------------------------------------------------
-- CIVILIZATION INFO (Civilopedia)
--------------------------------------------------------------------------------
INSERT INTO	CivilizationInfo
		(CivilizationType, Header, Caption, SortIndex)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'LOC_CIVINFO_LOCATION', 'LOC_CIVINFO_MS2099_CIVNAME_LOCATION', 10),
		('CIVILIZATION_MS2099_CIVNAME',	'LOC_CIVINFO_SIZE', 'LOC_CIVINFO_MS2099_CIVNAME_SIZE', 20),
		('CIVILIZATION_MS2099_CIVNAME',	'LOC_CIVINFO_POPULATION', 'LOC_CIVINFO_MS2099_CIVNAME_POPULATION', 30),
		('CIVILIZATION_MS2099_CIVNAME',	'LOC_CIVINFO_CAPITAL', 'LOC_CIVINFO_MS2099_CIVNAME_CAPITAL', 40);
		

--------------------------------------------------------------------------------
-- START BIAS
-- Tier: 1?5, with 1 being the strongest bias.
-- TerrainType: Terrains.xml.
-- FeatureType: Features.xml, Expansion1_Features.xml, Expansion2_Features.xml.
-- ResourceType: Resources.xml, Expansion1_Resources.xml.
--------------------------------------------------------------------------------
INSERT INTO	StartBiasTerrains
		(CivilizationType, TerrainType,	Tier)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'TERRAIN_PLAINS', 1),
		('CIVILIZATION_MS2099_CIVNAME',	'TERRAIN_GRASS', 5);

INSERT INTO	StartBiasFeatures
		(CivilizationType, FeatureType, Tier)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'FEATURE_FLOODPLAINS', 4);

INSERT INTO	StartBiasResources
		(CivilizationType, ResourceType, Tier)
VALUES	('CIVILIZATION_MS2099_CIVNAME',	'RESOURCE_JADE', 3);

INSERT INTO	StartBiasRivers
		(CivilizationType, Tier)
VALUES	('CIVILIZATION_MS2099_CIVNAME', 2);
