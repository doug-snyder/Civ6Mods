/*
	Civilization Text Entries
	Authors: MC
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Leader_Localisation.sql, are where we define the text that will actually display, in-game. Fundamentally, certain unique code strings have associated 'localisation' strings. In this file, we specify the exact string of characters that will display in place of the unique code string.

-- In all cases, localisation strings always start with LOC_ - such that we can easily tell them apart from game code.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization

-- Defines the text strings that identify your custom civilization by name.
-----------------------------------------------

	('en_US',	'LOC_CIVILIZATION_MS2099_CIVNAME_NAME',		'Civname'			),
	('en_US',	'LOC_CIVILIZATION_MS2099_CIVNAME_DESCRIPTION',	'Civname_Empire'	),
	('en_US',	'LOC_CIVILIZATION_MS2099_CIVNAME_ADJECTIVE',  	'Civname'			),
	
-----------------------------------------------
-- Civilization Unique Ability

-- Defines the text strings that name and describe your custom civilization's Unique Ability.

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

	('en_US',	'LOC_TRAIT_CIVILIZATION_MS2099_CIVTRAIT_NAME',			'Civtrait_Name.'									),
	('en_US',	'LOC_TRAIT_CIVILIZATION_MS2099_CIVTRAIT_DESCRIPTION',	'Civtrait_Description [ICON_Food] [ICON_Faith].'	),

-----------------------------------------------
-- Civilization Unique Infrastructure (Improvement)

-- Defines the text strings that name and describe your custom civilization's Unique Infrastructure (in this case, Improvement) and its capability.

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

	('en_US',	'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_NAME',			'Civimprovement_Name'			),
	('en_US',	'LOC_IMPROVEMENT_CIVNAME_CIVIMPROVEMENT_DESCRIPTION',	'Civimprovement_Description.'	),

-----------------------------------------------
-- Civilization Unique Unit

-- Defines the text strings that name and describe your custom civilization's Unique Unit and its capability. Where this replaces an existing unit, it's customary to mention this.

-- The LOC_ABILITY_UNITNAME is a brief description that appears in a separate Civilopedia entry, as well as part of a hover 'tooltip' in-game (I think).

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

	('en_US',	'LOC_UNIT_MS2099_CIVUNIT_NAME',		'Civunit_Name'			),
	('en_US',	'LOC_UNIT_MS2099_CIVUNIT_DESCRIPTION',	'Civunit_Description.'	),
	('en_US',	'LOC_ABILITY_MS2099_CIVUNIT',			'Civunit_Ability.'		),

-----------------------------------------------
-- Mountains

-- Defines the text strings to be used for the custom mountain range names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom mountain range names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------
/*
	('en_US',	'LOC_NAMED_MOUNTAIN_CORDILLERA_NEOVOLCANICA',		'Cordillera Neovolcanica'	),
	('en_US',	'LOC_NAMED_MOUNTAIN_MEXICAN_PLATEAU',				'Mexican Plateau'			),
	('en_US',	'LOC_NAMED_MOUNTAIN_SIERRA_MADRE_OCCIDENTAL',		'Sierra Madre Occidental'	),
	('en_US',	'LOC_NAMED_MOUNTAIN_SIERRA_MADRE_DEL_SUR',			'Sierra Madre del Sur'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_SIERRA_MADRE_ORIENTAL',			'Sierra Madre Oriental'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_CHIAPAS',						'Chiapas'					),
	('en_US',	'LOC_NAMED_MOUNTAIN_MONTANAS_GUATEMALA',			'Montañas Guatemala'		),
*/
-----------------------------------------------
-- Rivers

-- Defines the text strings to be used for the custom river names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom river names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------
/*
	('en_US',	'LOC_NAMED_RIVER_GRANDE',				'Río Grande'				),
	('en_US',	'LOC_NAMED_RIVER_USUMACINTA',			'Río Usumacinta'			),
	('en_US',	'LOC_NAMED_RIVER_NAZAS',				'Río Nazas'					),
	('en_US',	'LOC_NAMED_RIVER_AGUANAVAL',			'Río Aguanaval'				),
	('en_US',	'LOC_NAMED_RIVER_BALSAS',				'Río Balsas'				),
	('en_US',	'LOC_NAMED_RIVER_CULIACAN',				'Río Culiacan'				),
	('en_US',	'LOC_NAMED_RIVER_LERMA',				'Río Lerma'					),
	('en_US',	'LOC_NAMED_RIVER_GRANDE_DE_SANTIAGO',	'Río Grande de Santiago'	),
	('en_US',	'LOC_NAMED_RIVER_FUERTE',				'Río Fuerte'				),
	('en_US',	'LOC_NAMED_RIVER_CONCHOS',				'Río Conchos'				),
*/
-----------------------------------------------
-- Lakes

-- Defines the text strings to be used for the custom lake names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom lake names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------
/*
	('en_US',	'LOC_NAMED_LAKE_CHAPALA',				'Chapala'			),
	('en_US',	'LOC_NAMED_LAKE_PATZCUARO',				'Pátzcuaro'			),
	('en_US',	'LOC_NAMED_LAKE_BACALAR',				'Bacalar'			),
	('en_US',	'LOC_NAMED_LAKE_LAGUNA_CATEMACO',		'Laguna Catemaco'	),
	('en_US',	'LOC_NAMED_LAKE_EL_CARACOL',			'El Caracol'		),
*/
-----------------------------------------------
-- Deserts

-- Defines the text strings to be used for the custom desert names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom desert names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------
/*
	('en_US',	'LOC_NAMED_DESERT_SONORA',		'Desierto de Soñora'		),
	('en_US',	'LOC_NAMED_DESERT_LA_GUAJIRA',	'Desierto La Guajira'		),
	('en_US',	'LOC_NAMED_DESERT_SECHURA',		'Desierto de Sechura'		),
*/
-----------------------------------------------
-- Volcanoes

-- Defines the text strings to be used for the custom volcano names that were defined in Civilization_Config.sql. As per the note in that file, these should only be present if you are developing a mod that will leverage/require Gathering Storm (Expansion2) functionality.

-- These entries need only be here if custom volcano names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------
/*
	('en_US',	'LOC_NAMED_VOLCANO_PICO_DE_ORIZABA',	'Pico de Orizaba'			),
	('en_US',	'LOC_NAMED_VOLCANO_TAJUMULCO',			'Tajumulco'					),
	('en_US',	'LOC_NAMED_VOLCANO_TACANA',				'Volcan Tacana'				),
	('en_US',	'LOC_NAMED_VOLCANO_SANTIAGUITO',		'Santiaguito'				),
	('en_US',	'LOC_NAMED_VOLCANO_CHAPARRASTIQUE',		'Chaparrastique'			),
*/
-----------------------------------------------
-- Cities

-- Defines the text strings to be used for city names by the custom civilization, that were defined in Civilization_Config.sql.

-- The order in which city names for a civilization appear is partly affected by the value set for the RandomCityNameDepth within the Civilizations table (again, in Civilization_Config.sql).
-----------------------------------------------

	('en_US',	'LOC_CITY_NAME_MS2099_CIVNAME_1',  'City_Name_1'),
	
-----------------------------------------------
-- Citizens

-- Defines the text strings to be used for the names of citizens by the custom civilization, that were defined in Civilization_Config.sql.
-----------------------------------------------
	
	('en_US',	'LOC_CITIZEN_MS2099_CIVNAME_MALE_1',	'Civname_Citizen_Male_1'	),
	('en_US',	'LOC_CITIZEN_MS2099_CIVNAME_FEMALE_1',	'Civname_Citizen_Female_1'	),
	
-----------------------------------------------
-- Info

-- These define the text strings that primarily appear in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.
-----------------------------------------------
/*
	('en_US',	'LOC_CIVINFO_MS2099_CIVNAME_LOCATION',		'Mesoamerica'		),
	('en_US',	'LOC_CIVINFO_MS2099_CIVNAME_SIZE',			'2.3 million km²'	),
	('en_US',	'LOC_CIVINFO_MS2099_CIVNAME_POPULATION',	'c. 14 million'		),
	('en_US',	'LOC_CIVINFO_MS2099_CIVNAME_CAPITAL',		'San Lorenzo'		),
*/
-----------------------------------------------
-- Civilopedia

-- The content of the below entries represents the detailed entry for your custom civilization in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_PREFIX_CIVNAME_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number).

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_1',		
	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_1.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_2',		
	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_MS2099_CIVNAME_CHAPTER_HISTORY_PARA_2.'),	

	-----------------------------------------------
-- Unique Unit Civilopedia Entry

-- The content of the below entry represents the detailed entry for your custom civilization's unique unit in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_UNITS_PAGE_UNIT_PREFIX_CIVNAME_UU_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number). Other entries are possible for different unique element-types - such as BUILDINGS or IMPROVEMENTS. These require replacing UNITS, UNIT and UU respectively in the below example with the appropriate strings.

-- Unique Building example:			LOC_PEDIA_BUILDINGS_PAGE_BUILDING_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X
-- Unique Improvement example:		LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_MS2099_CIVNAME_UU_CHAPTER_HISTORY_PARA_1',  	
	'LOC_PEDIA_UNITS_PAGE_UNIT_MS2099_CIVNAME_UU_CHAPTER_HISTORY_PARA_1.'	);
