/*
	MisterShake2099 (MS2099)
	Civilization_HistoricMoments.sql
*/

--------------------------------------------------------------------------------
-- MOMENT ILLUSTRATIONS
--------------------------------------------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,
		 MomentDataType,
		 GameDataType,
		 Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_UNIT',
		 'MOMENT_DATA_UNIT',
		 'UNIT_MS2099_CIVUNIT',
		 'WerejaguarHistoricMoment.dds'),
		('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',
		 'MOMENT_DATA_IMPROVEMENT',
		 'IMPROVEMENT_CIVIMPROVEMENT',
		 'ColossalHeadHistoricMoment.dds');
