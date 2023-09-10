/*
	MisterShake2099 (MS2099)
	Civilization_UA.sql
*/

--------------------------------------------------------------------------------
-- TYPES
--------------------------------------------------------------------------------
INSERT INTO	Types
		(Type, Kind)
VALUES	('TRAIT_CIVILIZATION_MS2099_CIVIMPROVEMENT', 'KIND_TRAIT');


--------------------------------------------------------------------------------
-- TRAITS
--------------------------------------------------------------------------------
INSERT INTO	Traits	
		(TraitType,	Name, Description)
VALUES	('TRAIT_CIVILIZATION_MS2099_CIVIMPROVEMENT',
		 'LOC_TRAIT_CIVILIZATION_MS2099_CIVTRAIT_NAME',
		 'LOC_TRAIT_CIVILIZATION_MS2099_CIVTRAIT_DESCRIPTION');
		

--------------------------------------------------------------------------------
-- CIVILIZATION TRAITS
--------------------------------------------------------------------------------
INSERT INTO	CivilizationTraits
		(CivilizationType, TraitType)
VALUES	('CIVILIZATION_MS2099_STATE_OF_IOWA',
		 'TRAIT_CIVILIZATION_MS2099_CIVIMPROVEMENT');


--------------------------------------------------------------------------------
-- TRAIT MODIFIERS
--------------------------------------------------------------------------------
INSERT INTO	TraitModifiers	
		(TraitType, ModifierId)
VALUES	('TRAIT_CIVILIZATION_MS2099_CIVIMPROVEMENT',
		 'MODIFIER_MS2099_CIVIMPROVEMENT_SHRINE_YIELD'),
		('TRAIT_CIVILIZATION_MS2099_CIVIMPROVEMENT',
		 'MODIFIER_MS2099_CIVIMPROVEMENT_TEMPLE_YIELD');


--------------------------------------------------------------------------------
-- MODIFIERS
--------------------------------------------------------------------------------
INSERT INTO	Modifiers
		(ModifierId, ModifierType, RunOnce, Permanent)
VALUES	('MODIFIER_MS2099_CIVIMPROVEMENT_SHRINE_YIELD',
		 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 0, 1),
		('MODIFIER_MS2099_CIVIMPROVEMENT_TEMPLE_YIELD',
		 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', 0, 1);


--------------------------------------------------------------------------------
-- MODIFIER ARGUMENTS
--------------------------------------------------------------------------------
INSERT INTO	ModifierArguments
		(ModifierId, Name, Value)
VALUES	('MODIFIER_MS2099_CIVIMPROVEMENT_SHRINE_YIELD',	'BuildingType', 'BUILDING_SHRINE'),
		('MODIFIER_MS2099_CIVIMPROVEMENT_SHRINE_YIELD',	'YieldType', 'YIELD_FOOD'),
		('MODIFIER_MS2099_CIVIMPROVEMENT_SHRINE_YIELD',	'Amount', 2),
		('MODIFIER_MS2099_CIVIMPROVEMENT_TEMPLE_YIELD',	'BuildingType', 'BUILDING_TEMPLE'),
		('MODIFIER_MS2099_CIVIMPROVEMENT_TEMPLE_YIELD',	'YieldType', 'YIELD_FOOD'),
		('MODIFIER_MS2099_CIVIMPROVEMENT_TEMPLE_YIELD',	'Amount', 2);
