/*
	Localisation
	Authors: MC
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Civilization_Localisation.sql, are where we define the text that will actually display, in-game. Fundamentally, certain unique code strings have associated 'localisation' strings. In this file, we specify the exact string of characters that will display in place of the unique code string.

-- In all cases, localisation strings always start with LOC_ - such that we can easily tell them apart from game code.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Leader Name
-----------------------------------------------	
	
	('en_US', 'LOC_LEADER_MS2099_CIVLEADER_NAME', 'Corneal Cornials Cornwall'),
	
-----------------------------------------------
-- Leader Unique Ability
-----------------------------------------------	

	('en_US', 'LOC_TRAIT_LEADER_MS2099_LEADERTRAIT_NAME', 'Corn Jesus'),
	('en_US', 'LOC_TRAIT_LEADER_MS2099_LEADERTRAIT_DESCRIPTION',
			  '+1 [ICON_Faith] for every corn field. '
			+ '+1 [ICON_Faith] for every corn field adjacent to an economic district. '
			+ 'Starts with Great Prophet. '
			+ 'Starts with Astrology. '
			+ 'Capital City can have 100% production holy site. '
			+ 'Corn Trading: All international trade routes receive +2 [ICON_Gold] and +2 [ICON_Food] for every Corn field in the City. '
			+ 'All national trade routes receive +1 [ICON_Faith] and +4 [ICON_Food]. '
			+ 'Increases the max amount of traders by 1 for every citizen in the capital.'),

-----------------------------------------------
-- Leader Agenda
-----------------------------------------------	

	('en_US', 'LOC_AGENDA_MS2099_CIVLEADER_NAME', 'Civ_Agenda_Name'),
	('en_US', 'LOC_AGENDA_MS2099_CIVLEADER_DESCRIPTION', 'Civ_Agenda_Description.'),
	
	('en_US', 'LOC_DIPLO_KUDO_LEADER_MS2099_CIVLEADER_REASON_ANY', '(Civ_Leader_Diplo_Kudo_Reason_Any.)'),
	('en_US', 'LOC_DIPLO_MODIFIER_MS2099_CIVLEADER_HAPPY', 'Civ_Leader_Diplo_Happy.'),
	
	('en_US', 'LOC_DIPLO_WARNING_LEADER_MS2099_CIVLEADER_REASON_ANY', '(Civ_Leader_Diplo_Warning_Reason_Any.)'),
	('en_US', 'LOC_DIPLO_MODIFIER_MS2099_CIVLEADER_UNHAPPY', 'Civ_Leader_Diplo_Unhappy.'),

		
-----------------------------------------------
-- Dawn of Man (Loading Screen) Text
-----------------------------------------------	

	('en_US', 'LOC_LOADING_INFO_LEADER_MS2099_CIVLEADER', 'Corneal Cornials Cornwall.'),

-----------------------------------------------
-- Diplomacy Text: First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_LEADER_MS2099_CIVLEADER_ANY', 'Civ_Leader_First_Meet_Any.'),
	
	-- AI invitation to visit nearby City (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_MS2099_CIVLEADER_ANY', 'Civ_Leader_First_Invitation_Any.'),
	
	-- AI accepts human invitation (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_MS2099_CIVLEADER_ANY', 'Civ_Leader_First_Invitation_Accept_Any.'),
	
	-- AI invitation to exchange Capital Information (ANY)
	('en_US',	'LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_MS2099_CIVLEADER_ANY', 'Civ_Leader_First_Capital_Exchange_Any.'),

-----------------------------------------------
-- Diplomacy Text: Greetings
-----------------------------------------------	

	-- (HAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_MS2099_CIVLEADER_HAPPY', 'Loc_Diplo_Greeting_Leader_Happy.'),

	-- (UNHAPPY)
	('en_US',	'LOC_DIPLO_GREETING_LEADER_MS2099_CIVLEADER_UNHAPPY', 'Loc_Diplo_Greeting_Leader_Unhappy.'),
	
-----------------------------------------------  
-- Diplomacy Text: Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'Loc_Diplo_Accept_Delegation_From_Human_Leader_Any.'),
	
	-- AI Rejects (ANY)
	('en_US',	'LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'Loc_Diplo_Reject_Delegation_From_Human_Leader_Any.'),
	
	-- AI Requests (ANY)
	('en_US',	'LOC_DIPLO_DELEGATION_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'Loc_Diplo_Delegation_From_AI_Leader_Any.'),
	
-----------------------------------------------
-- Diplomacy Text: Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'Accept_Open_Borders.'),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'Reject_Open_Borders.'),
	
	-- AI requests from human (ANY)	
	('en_US',	'LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'Request_Open_Borders.'),
	
-----------------------------------------------
-- Diplomacy Text: Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'AI_Accept_Friendship.'),
	
	-- AI rejects from human (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'AI_Reject_Friendship.'),
	
	-- AI Requests friendship from human (ANY)	
	('en_US',	'LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'AI_Request_Friendship'),
	
	-- Human accepts AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'Human_Accept_Friendship.'),
	
	-- Human rejects AI requests, AI responds (ANY)	
	('en_US',	'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'Human_Reject_Friendship.'),

-----------------------------------------------
-- Diplomacy Text: Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	('en_US',	'LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'AI_Request_Alliance'),

-----------------------------------------------
-- Diplomacy Text: Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	('en_US',	'LOC_DIPLO_KUDO_EXIT_LEADER_MS2099_CIVLEADER_ANY', 'AI_Kudos.'),
	
	-- AI Warnings (ANY)
	('en_US',	'LOC_DIPLO_WARNING_EXIT_LEADER_MS2099_CIVLEADER_ANY', 'AI_Warnings.'),

-----------------------------------------------
-- Diplomacy Text: Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_MS2099_CIVLEADER_HAPPY', 'AI_Warn_Border_Troops_Happy.'),

	-- AI warns player for border troops (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_MS2099_CIVLEADER_UNHAPPY', 'AI_Warn_Border_Troops_Unhappy.'),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_MS2099_CIVLEADER_HAPPY', 'AI_Accept_Player_Border_Troops_Warning_Happy.'),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_MS2099_CIVLEADER_UNHAPPY', 'AI_Accept_Player_Border_Troops_Warning_Unhappy.'),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	('en_US',	'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_MS2099_CIVLEADER_ANY', 'AI_Reject_Player_Border_Troops_Warning_Declare_War.'),

-----------------------------------------------
-- Diplomacy Text: Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_MS2099_CIVLEADER_HAPPY', 'AI_Warn_Player_Settling_Happy.'),
	
	-- AI warns player for settling too close (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_MS2099_CIVLEADER_UNHAPPY', 'AI_Warn_Player_Settling_Unhappy.'),
	
	-- Positive AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_MS2099_CIVLEADER_HAPPY', 'AI_Settling_Response_Positive_Happy.'),
	
	-- Positive AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_MS2099_CIVLEADER_UNHAPPY', 'AI_Settling_Response_Positive_Unhappy'),
	
	-- Negative AI response to human request (HAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_MS2099_CIVLEADER_HAPPY', 'AI_Settling_Response_Negative_Happy.'),
	
	-- Negative AI response to human request (UNHAPPY)
	('en_US',	'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_MS2099_CIVLEADER_UNHAPPY', 'AI_Settling_Response_Negative_Unhappy.'),
	
-----------------------------------------------
-- Diplomacy Text: Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_MS2099_CIVLEADER_HAPPY', 'AI_Accept_Trade_Happy'),
	
	-- AI Accepts Deal (Unhappy)
	('en_US',	'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_MS2099_CIVLEADER_UNHAPPY', 'AI_Accept_Trade_Unhappy.'),

	-- AI Rejects Deal (HAPPY)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_MS2099_CIVLEADER_HAPPY', 'AI_Reject_Trade_Happy.'),
	
	-- AI Rejects Deal (Unhappy)
	('en_US',	'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_MS2099_CIVLEADER_UNHAPPY', 'AI_Reject_Trade_Unhappy.'),

-----------------------------------------------
-- Diplomacy Text: Denounce
-----------------------------------------------	

	-- Human denounce, AI responds
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'AI_Denounce_Reponse.'),
	
	-- From AI
	('en_US',	'LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'AI_Denounce_Initiate.'),
	
-----------------------------------------------
-- Diplomacy Text: Declarations of War
-----------------------------------------------	

	-- Human Declares War, AI responds
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', 'AI_Declare_War_Response.'),
	
	-- AI Declares War
	('en_US',	'LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'AI_Declare_War_Initiate.'),

-----------------------------------------------
-- Diplomacy Text: Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_MS2099_CIVLEADER_ANY', 'AI_Accept_Peace.'),
	
	-- AI refuses human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_MS2099_CIVLEADER_ANY', 'AI_Refuse_Peace.'),
	
	-- AI requests from human
	('en_US',	'LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'AI_Requests_Peace.'),

-----------------------------------------------
-- Diplomacy Text: Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_AI_LEADER_MS2099_CIVLEADER_ANY', 'AI_Defeated_By_Human.'),

	-- Human is Defeated (will see this in hotseat)
	('en_US',	'LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_MS2099_CIVLEADER_ANY', '{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_MS2099_CIVLEADER_ANY}'),

--------------------------------------------------------------------
-- Leader Quote and Civilopedia Text
--------------------------------------------------------------------

	('en_US',	'LOC_PEDIA_LEADERS_PAGE_MS2099_CIVLEADER_QUOTE', 'Civleader_Quote.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_MS2099_CIVLEADER_TITLE', 'Civleader.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_MS2099_CIVLEADER_SUBTITLE', 'Civleader_Subtitle.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_MS2099_CIVLEADER_CHAPTER_CAPSULE_BODY', 'Civleader_Chapter_Capsule_Body.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_MS2099_CIVLEADER_CHAPTER_DETAILED_BODY', 'Civleader_Chapter_Detailed_Body.'),
	('en_US',	'LOC_PEDIA_LEADERS_PAGE_LEADER_MS2099_CIVLEADER_CHAPTER_HISTORY_PARA_1', 'Civleader_Chapter_History_Para_1.'),
	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_MS2099_CIVLEADER_UU_CHAPTER_HISTORY_PARA_1', 'Civunit_Chapter_History_Para_1.');
