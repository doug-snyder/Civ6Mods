/* MisterShake2099 (MS2099) */

--------------------------------------------------------------------------------
-- ICON TEXTURE ALTASES
--------------------------------------------------------------------------------
INSERT INTO IconTextureAtlases
		(Name, IconSize, IconsPerRow, IconsPerColumn, Filename)
VALUES	('ICON_ATLAS_MS2099_CIVNAME', 22,  1, 1, 'OlmecAtlas22.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 30,  1, 1, 'OlmecAtlas30.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 36,  1, 1, 'OlmecAtlas36.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 44,  1, 1, 'OlmecAtlas44.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 48,  1, 1, 'OlmecAtlas48.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 50,  1, 1, 'OlmecAtlas50.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 64,  1, 1, 'OlmecAtlas64.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 80,  1, 1, 'OlmecAtlas80.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 200, 1, 1, 'OlmecAtlas200.dds'),
		('ICON_ATLAS_MS2099_CIVNAME', 256, 1, 1, 'OlmecAtlas256.dds'),

		('ICON_ATLAS_MS2099_CIVLEADER',	32,	 1, 1, 'PoNgbeIcon32.dds'),
		('ICON_ATLAS_MS2099_CIVLEADER',	45,	 1, 1, 'PoNgbeIcon45.dds'),
		('ICON_ATLAS_MS2099_CIVLEADER',	48,	 1, 1, 'PoNgbeIcon48.dds'),
		('ICON_ATLAS_MS2099_CIVLEADER',	50,	 1, 1, 'PoNgbeIcon50.dds'),
		('ICON_ATLAS_MS2099_CIVLEADER',	55,	 1, 1, 'PoNgbeIcon55.dds'),
		('ICON_ATLAS_MS2099_CIVLEADER',	64,	 1, 1, 'PoNgbeIcon64.dds'),
		('ICON_ATLAS_MS2099_CIVLEADER',	80,	 1, 1, 'PoNgbeIcon80.dds'),
		('ICON_ATLAS_MS2099_CIVLEADER',	256, 1, 1, 'PoNgbeIcon256.dds'),
		
		-- TODO: Check that this shouldn't be 'CIVUNIQUEUNIT'
		('ICON_ATLAS_MS2099_CIVUNIT', 22,  2, 1, 'WerejaguarAtlas22.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 32,  2, 1, 'WerejaguarAtlas32.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 38,  2, 1, 'WerejaguarAtlas38.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 50,  2, 1, 'WerejaguarAtlas50.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 70,  2, 1, 'WerejaguarAtlas70.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 80,  2, 1, 'WerejaguarAtlas80.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 95,  2, 1, 'WerejaguarAtlas95.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 200, 2, 1, 'WerejaguarAtlas200.dds'),
		('ICON_ATLAS_MS2099_CIVUNIT', 256, 2, 1, 'WerejaguarAtlas256.dds'),
		
		-- TODO: Check that this shouldn't be 'CIVUNIQUEIMPROVEMENT'
		('ICON_ATLAS_CIVIMPROVEMENT', 38,  1, 1, 'ColossalHead38.dds'),
		('ICON_ATLAS_CIVIMPROVEMENT', 40,  1, 1, 'ColossalHead40.dds'),
		('ICON_ATLAS_CIVIMPROVEMENT', 50,  1, 1, 'ColossalHead50.dds'),
		('ICON_ATLAS_CIVIMPROVEMENT', 80,  1, 1, 'ColossalHead80.dds'),
		('ICON_ATLAS_CIVIMPROVEMENT', 200, 1, 1, 'ColossalHead200.dds'),
		('ICON_ATLAS_CIVIMPROVEMENT', 256, 1, 1, 'ColossalHead256.dds');


--------------------------------------------------------------------------------
-- ICON DEFINITIONS
--------------------------------------------------------------------------------
INSERT INTO IconDefinitions
		(Name, Atlas, 'Index')
VALUES	('ICON_CIVILIZATION_MS2099_CIVNAME', 'ICON_ATLAS_MS2099_CIVNAME', 0),
		('ICON_LEADER_MS2099_CIVLEADER', 'ICON_ATLAS_MS2099_CIVLEADER', 0),
		('ICON_UNIT_MS2099_CIVUNIT_PORTRAIT', 'ICON_ATLAS_MS2099_CIVUNIT', 0),
		('ICON_UNIT_MS2099_CIVUNIT', 'ICON_ATLAS_MS2099_CIVUNIT', 1);
