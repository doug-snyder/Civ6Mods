/*
	MisterShake2099 (MS2099)
	Civilization_UI.sql
	CIVILIZATION UNIQUE IMPROVEMENTS/INFRASTRUCTURE
*/

--------------------------------------------------------------------------------
-- TYPES
--------------------------------------------------------------------------------
INSERT OR REPLACE INTO Types	
		(Type, Kind)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT', 'KIND_TRAIT'),
		('IMPROVEMENT_CIVIMPROVEMENT', 'KIND_IMPROVEMENT');


--------------------------------------------------------------------------------
-- CIVILIZATION TRAITS
--------------------------------------------------------------------------------
INSERT INTO CivilizationTraits
		(TraitType, CivilizationType)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT', 'CIVILIZATION_MS2099_STATE_OF_IOWA');


--------------------------------------------------------------------------------
-- TRAITS
--------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType, Name, Description)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT',
		 'LOC_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT_NAME',
		 'LOC_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT_DESCRIPTION');


--------------------------------------------------------------------------------
-- IMPROVEMENTS
--------------------------------------------------------------------------------
DELETE FROM Improvements WHERE ImprovementType = 'IMPROVEMENT_CIVIMPROVEMENT';

INSERT OR REPLACE INTO Improvements	
		(
			ImprovementType,
			Name,
			Description,
			Icon,
			-- Building Info
			Buildable, SameAdjacentValid,
			TraitType,
			PrereqCivic,
			-- Plunder Info
			PlunderType, PlunderAmount,
			-- Housing Info
			Housing, TilesRequired
		)
VALUES	
		(
			'IMPROVEMENT_CIVIMPROVEMENT',
			'LOC_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT_NAME',
			'LOC_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT_DESCRIPTION',
			'ICON_IMPROVEMENT_CIVIMPROVEMENT',
			-- Building Info
			1, 0,
			'TRAIT_CIVILIZATION_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT',
			'CIVIC_MYSTICISM',
			-- Plunder Info
			'PLUNDER_SCIENCE', 1,
			-- Housing Info
			0, 1
		);


--------------------------------------------------------------------------------
-- IMPROVEMENT: VALID TERRAINS
-- Terrain Types: TERRAIN_(GRASS; GRASS_HILLS; PLAINS; PLAINS_HILLS; TUNDRA; TUNDRA_HILLS; etc.)
--------------------------------------------------------------------------------
DELETE FROM Improvement_ValidTerrains WHERE ImprovementType = 'IMPROVEMENT_CIVIMPROVEMENT';

INSERT OR REPLACE INTO Improvement_ValidTerrains
		(ImprovementType, TerrainType)
VALUES	('IMPROVEMENT_CIVIMPROVEMENT', 'TERRAIN_terrain');


--------------------------------------------------------------------------------
-- IMPROVEMENT: VALID FEATURES
-- Feature Types: FEATURE_(JUNGLE; etc.)
--------------------------------------------------------------------------------
DELETE FROM Improvement_ValidFeatures WHERE ImprovementType = 'IMPROVEMENT_CIVIMPROVEMENT';

INSERT OR REPLACE INTO Improvement_ValidFeatures
		(ImprovementType, FeatureType)
VALUES 	('IMPROVEMENT_CIVIMPROVEMENT', 'FEATURE_feature');


--------------------------------------------------------------------------------
-- IMPROVEMENT: VALID BUILD UNITS
-- Unit Types: UNIT_(BUILDER; etc.)
--------------------------------------------------------------------------------
INSERT or REPLACE INTO Improvement_ValidBuildUnits
		(ImprovementType, UnitType)
VALUES 	('IMPROVEMENT_CIVIMPROVEMENT', 'UNIT_unit');


--------------------------------------------------------------------------------
-- IMPROVEMENT: YIELD CHANGES
-- Yield Types: YIELD_(CULTURE; FAITH; FOOD; GOLD; PRODUCTION; SCIENCE)
--------------------------------------------------------------------------------
DELETE FROM Improvement_YieldChanges WHERE ImprovementType = 'IMPROVEMENT_CIVIMPROVEMENT';

INSERT or REPLACE INTO Improvement_YieldChanges	
		(ImprovementType, YieldType, YieldChange)
VALUES	('IMPROVEMENT_CIVIMPROVEMENT', 'YIELD_yield', 1);


--------------------------------------------------------------------------------
-- IMPROVEMENT: ADJACENCIES
-- TilesRequired: Adjacent tiles required to trigger YieldChange.
--				  For Districts: 1
-- AdjacentDistrict: Type of required adjacent District.
-- District Types: DISTRICT_district,
--				   Adjacent(Feature(str); Terrain(str); NaturalWonder(bool); SeaResource(bool)
--------------------------------------------------------------------------------
DELETE FROM Improvement_Adjacencies WHERE ImprovementType = 'IMPROVEMENT_CIVIMPROVEMENT';

INSERT or REPLACE INTO Improvement_Adjacencies	
		(ImprovementType, YieldChangeId)
VALUES	('IMPROVEMENT_CIVIMPROVEMENT', 'CIVNAME_CIVIMPROVEMENT_SITETYPE');

INSERT INTO Adjacency_YieldChanges
		(ID, Description, YieldType, YieldChange, TilesRequired, AdjacentDistrict)
VALUES	('CIVNAME_CIVIMPROVEMENT_SITETYPE', 'Placeholder', 'YIELD_yield', 1, 1, 'DISTRICT_district');


--------------------------------------------------------------------------------
-- IMPROVEMENT: TOURISM
-- Tourism Source Types: TOURISMSOURCE_(SCIENCE; etc.)
--------------------------------------------------------------------------------
DELETE FROM Improvement_Tourism WHERE ImprovementType = 'IMPROVEMENT_CIVIMPROVEMENT';

INSERT INTO Improvement_Tourism	
		(ImprovementType, TourismSource, PrereqTech, ScalingFactor)
VALUES	('IMPROVEMENT_CIVIMPROVEMENT', 'TOURISMSOURCE_SCIENCE', 'TECH_FLIGHT', 100);


--------------------------------------------------------------------------------
-- TRAIT MODIFIERS
--------------------------------------------------------------------------------
INSERT INTO TraitModifiers			
		(TraitType, ModifierId)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_STATE_OF_IOWA_CIVIMPROVEMENT', 'CIVNAME_CIVIMPROVEMENT_GREATPERSON');


--------------------------------------------------------------------------------
-- MODIFIERS
--------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId, ModifierType, SubjectRequirementSetId)
VALUES	('CIVNAME_CIVIMPROVEMENT_GREATPERSON', 'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER', 'CIVNAME_#_CIVIMPROVEMENT'),
		('CIVNAME_CIVIMPROVEMENT_GREATPERSON_POINT', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', null);


--------------------------------------------------------------------------------
-- MODIFIER ARGUMENTS
--------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId, Name, Value)
VALUES	('CIVNAME_CIVIMPROVEMENT_GREATPERSON', 'ModifierId', 'CIVNAME_CIVIMPROVEMENT_GREATPERSON_POINT'),
		('CIVNAME_CIVIMPROVEMENT_GREATPERSON_POINT', 'GreatPersonClassType', 'GREAT_PERSON_CLASS_class'),
		('CIVNAME_CIVIMPROVEMENT_GREATPERSON_POINT', 'Amount', 1);


--------------------------------------------------------------------------------
-- REQUIREMENT SETS
--------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId, RequirementSetType)
VALUES	('CIVNAME_#_CIVIMPROVEMENT', 'REQUIREMENTSET_TEST_ALL'),
		('PLOT_HAS_STATE_OF_IOWA_CIVIMPROVEMENT', 'REQUIREMENTSET_TEST_ALL');


--------------------------------------------------------------------------------
-- REQUIREMENT SET REQUIREMENTS
--------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId, RequirementId)
VALUES	('CIVNAME_#_CIVIMPROVEMENT', 'CIVNAME_#_CIVIMPROVEMENT_REQUIREMENT'),
		('PLOT_HAS_STATE_OF_IOWA_CIVIMPROVEMENT',	'PLOT_HAS_STATE_OF_IOWA_CIVIMPROVEMENT_REQUIREMENT');


--------------------------------------------------------------------------------
-- REQUIREMENTS
--------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId, RequirementType)
VALUES	('CIVNAME_#_CIVIMPROVEMENT_REQUIREMENT', 'REQUIREMENT_COLLECTION_COUNT_ATLEAST'),
		('PLOT_HAS_STATE_OF_IOWA_CIVIMPROVEMENT_REQUIREMENT', 'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');


--------------------------------------------------------------------------------
-- REQUIREMENT ARGUMENTS
--------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId, Name, Value)
VALUES	('CIVNAME_#_CIVIMPROVEMENT_REQUIREMENT', 'CollectionType', 'COLLECTION_CITY_PLOT_YIELDS'),
		('CIVNAME_#_CIVIMPROVEMENT_REQUIREMENT', 'Count', 4),
		('CIVNAME_#_CIVIMPROVEMENT_REQUIREMENT', 'RequirementSetId', 'PLOT_HAS_STATE_OF_IOWA_CIVIMPROVEMENT'),
		('PLOT_HAS_STATE_OF_IOWA_CIVIMPROVEMENT_REQUIREMENT', 'ImprovementType', 'IMPROVEMENT_CIVIMPROVEMENT');
