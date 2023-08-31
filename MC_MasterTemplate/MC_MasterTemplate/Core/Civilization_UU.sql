/*
	MisterShake2099 (MS2099)
	Civilization_UU.sql
	CIVILIZATION UNIQUE UNIT
*/

--------------------------------------------------------------------------------
-- TYPES
--------------------------------------------------------------------------------
INSERT INTO Types
		(Type, Kind)
VALUES	('TRAIT_CIVILIZATION_MS2099_CIVUNIT', 'KIND_TRAIT'),
		('UNIT_MS2099_CIVUNIT', 'KIND_UNIT'),
		('ABILITY_MS2099_CIVUNIT', 'KIND_ABILITY');


--------------------------------------------------------------------------------
-- TAGS
--------------------------------------------------------------------------------
INSERT INTO Tags
		(Tag, Vocabulary)
VALUES	('CLASS_MS2099_CIVUNIT', 'ABILITY_CLASS');


--------------------------------------------------------------------------------
-- TYPE TAGS
--------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type, Tag)
VALUES	('UNIT_MS2099_CIVUNIT',	'CLASS_MS2099_CIVUNIT'),
		('ABILITY_MS2099_CIVUNIT', 'CLASS_MS2099_CIVUNIT');

INSERT INTO TypeTags (Type,	Tag)
SELECT 	'UNIT_MS2099_CIVUNIT', Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_coreUnit';


--------------------------------------------------------------------------------
-- TRAITS
--------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType, Name, Description)
VALUES	('TRAIT_CIVILIZATION_MS2099_CIVUNIT', 'LOC_UNIT_MS2099_CIVUNIT_NAME', 'LOC_UNIT_MS2099_CIVUNIT_DESCRIPTION');


--------------------------------------------------------------------------------
-- CIVILIZATION TRAITS
--------------------------------------------------------------------------------
INSERT INTO CivilizationTraits
		(CivilizationType, TraitType)
VALUES	('CIVILIZATION_MS2099_CIVNAME', 'TRAIT_CIVILIZATION_MS2099_CIVUNIT');


--------------------------------------------------------------------------------
-- UNITS
--------------------------------------------------------------------------------
INSERT INTO Units(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves, Cost, PurchaseYield, AdvisorType,
		Combat, RangedCombat, Range,
		BaseSightRange, ZoneOfControl, Domain,
		FormationClass, PromotionClass,
		Maintenance,
		MandatoryObsoleteTech, PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_MS2099_CIVUNIT',
		'LOC_UNIT_MS2099_CIVUNIT_NAME',
		'LOC_UNIT_MS2099_CIVUNIT_DESCRIPTION',
		'TRAIT_CIVILIZATION_MS2099_CIVUNIT',
		BaseMoves, Cost + 15, PurchaseYield, AdvisorType,
		Combat + 5, RangedCombat, Range,
		BaseSightRange, ZoneOfControl, Domain,
		FormationClass, PromotionClass,
		Maintenance,
		MandatoryObsoleteTech, PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_coreUnit';


--------------------------------------------------------------------------------
-- UNIT UPGRADES
--------------------------------------------------------------------------------
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_MS2099_CIVUNIT', UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_coreUnit';


--------------------------------------------------------------------------------
-- UNIT AI INFOS
--------------------------------------------------------------------------------
INSERT INTO UnitAiInfos (UnitType, AiType)
SELECT 	'UNIT_MS2099_CIVUNIT', AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_coreUnit';


--------------------------------------------------------------------------------
-- UNIT REPLACES
--------------------------------------------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType, ReplacesUnitType)
VALUES	('UNIT_MS2099_CIVUNIT',	'UNIT_coreUnit');


--------------------------------------------------------------------------------
-- UNIT ABILITIES
--------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType, Name, Description)
VALUES	('ABILITY_MS2099_CIVUNIT', 'LOC_UNIT_MS2099_CIVUNIT_NAME', 'LOC_ABILITY_MS2099_CIVUNIT');


--------------------------------------------------------------------------------
-- MODIFIERS
--------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId, ModifierType, OwnerRequirementSetId)
VALUES	('MODIFIER_CIVUNIT_GOLDEN_AGE_STRENGTH', 'MODIFIER_UNIT_ADJUST_COMBAT_STRENGTH', 'PLAYER_HAS_GOLDEN_AGE');


--------------------------------------------------------------------------------
-- MODIFIER ARGUMENTS
--------------------------------------------------------------------------------
INSERT INTO ModifierArguments		
		(ModifierId, Name, Value)
VALUES	('MODIFIER_CIVUNIT_GOLDEN_AGE_STRENGTH', 'Amount', 5);


--------------------------------------------------------------------------------
-- UNIT ABILITY MODIFIERS
--------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType, ModifierId)
VALUES	('ABILITY_MS2099_CIVUNIT', 'MODIFIER_CIVUNIT_GOLDEN_AGE_STRENGTH');


--------------------------------------------------------------------------------
-- MODIFIER STRINGS
--------------------------------------------------------------------------------
INSERT INTO ModifierStrings
		(ModifierId, Context, Text)
VALUES	('MODIFIER_CIVUNIT_GOLDEN_AGE_STRENGTH', 'Preview', 'LOC_ABILITY_MS2099_CIVUNIT');
