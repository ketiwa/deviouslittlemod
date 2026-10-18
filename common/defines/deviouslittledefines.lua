-- Combined defines for deviouslittlemod
-- Retained: zzz_decisive_battles_defines.lua and mod-specific defines.


-- ==================== zzz_decisive_battles_defines.lua ====================
NDefines.NCountry.ABDICATE_PRESTIGE_HIT = -25
NDefines.NCountry.BREAK_MARRIAGE_STABILITY_PENALTY = 0
NDefines.NCountry.BREAK_VASSAL_PRESTIGE_PENALTY = 0
NDefines.NCountry.CALL_ALLY_DECLINE_PRESTIGE_PENALTY = 0
NDefines.NCountry.CORE_LOSE_PRESTIGE = 0
NDefines.NCountry.DISINHERIT_PRESTIGE_HIT = -25
NDefines.NCountry.MINIMUM_POLICY_TIME = 0.1
NDefines.NCountry.NAT_FOCUS_YEARS = 5
NDefines.NCountry.NAT_FOCUS_YEARS_RANK = 0
NDefines.NCountry.NEW_HEIR_LEGITIMACY_HIT = -25
NDefines.NCountry.NEW_HEIR_PRESTIGE_HIT = -25
NDefines.NCountry.PS_PROMOTE_MERCANTILISM = 75
NDefines.NCountry.PS_REPLACE_RIVAL = 0

-- Guarantee all newly generated rulers (and heirs) roll at least 2/2/2.
-- Monarch skills are chosen between MONARCH_MIN_SKILL and MONARCH_MAX_SKILL.
NDefines.NCountry.MONARCH_MIN_SKILL = 2

NDefines.NDiplomacy.ANNUL_TREATIES_YEARS = 20
NDefines.NDiplomacy.MIN_RELATIONS_TO_ALLY = -200
NDefines.NDiplomacy.UNCONDITIONAL_SURRENDER_MIN_MONTHS = 1

NDefines.NGame.DAYS_BEHIND_LOWER_SPEED = 90
NDefines.NGame.DAYS_BEHIND_PAUSE = 90

-- Forts harder to assault (ported from Gecko Monday Fork, echo_defines.lua)
NDefines.NCountry.PS_ASSAULT = 0
NDefines.NMilitary.FORTRESS_COST = 0.25
NDefines.NMilitary.GARRISON_SIZE = 3000						-- GARRISON_SIZE
NDefines.NMilitary.SIEGE_FORCE_NEEDED_MULTIPLIER = 0.334	-- x times garrison to be able to siege.
NDefines.NMilitary.MAX_BREACH = 1
NDefines.NMilitary.SIEGE_BONUS_FOOD_SHORTAGE = 1
NDefines.NMilitary.SIEGE_BONUS_WATER_SHORTAGE = 1
NDefines.NMilitary.SIEGE_BONUS_DEFENDERS_DESERT = 1

-- Stop downstream trade power (ported from Gecko Monday Fork)
NDefines.NEconomy.TRADE_PROPAGATE_DIVIDER = 20
NDefines.NEconomy.TRADE_ADDED_VALUE_MODIFER = 0.01

NDefines.NMilitary.DEFAULT_WARGOAL_TICKINGWARSCORE_BONUS = 0.8
NDefines.NMilitary.SUPPLYLIMIT_BASE_MULTIPLIER = 10
NDefines.NMilitary.WARGOAL_MAX_BONUS = 50
NDefines.NMilitary.WARSCORE_MAX_FROM_BATTLES = 50

-- Backrow morale damage taken (vanilla 0.4; set to 0.0 to match Gecko Monday Fork).
NDefines.NMilitary.BACK_LINE_MORALE_DAMAGE_TAKEN_MODIFIER = 0.0

-- ==================== Mysticism piety action ====================
-- "Call on Religious Followers" (available at -75 piety) manpower reward.
NDefines.NReligion.PIETY_MANPOWER = 1.5

-- ==================== HRE / Imperial Authority ====================
-- Ported from Gecko Sunday Fork (echo_defines.lua).
-- Vanilla values noted in comments.
NDefines.NDiplomacy.IMPERIAL_AUTHORITY_FROM_PRINCES = 0.07        -- vanilla 0.075
NDefines.NDiplomacy.HRE_PRINCE_AUTHORITY_THRESHOLD = 10           -- vanilla 25
NDefines.NDiplomacy.HRE_HERETIC_PENALTY = 0                       -- vanilla -0.01
NDefines.NDiplomacy.HRE_FOREIGN_CONTROL_PENALTY = -0.006          -- vanilla -0.005
NDefines.NDiplomacy.IMPERIAL_CITY_IA = 0.01                       -- vanilla 0.005
NDefines.NDiplomacy.IMPERIAL_REFORM_COST = 60                     -- vanilla 50
NDefines.NDiplomacy.IMPERIAL_REFORM_AUTHORITY_ACCEPTANCE = 3      -- vanilla 1
NDefines.NCountry.MAX_PROVINCES_FOR_FREE_CITY = 8                 -- vanilla 1

