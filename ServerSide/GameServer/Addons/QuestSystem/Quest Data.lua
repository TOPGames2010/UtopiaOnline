---if don't have change quest icon system remove these and their related things in system ..
Questimportant = 1
QuestEvent = 2
QuestDaily = 3
Quests = { -- Example
{
    NpcID = 838,
    MissionID = 838,
    -- MissionSignIcon = QuestDaily,--comment all these as this don't have it 
    Name = "Level 85 Weapon Quest",
    InitDialog = "You need to kill 5x of each boss; <rAbyss Lord - Phantom Baron, Abyss Lord - Demon Flame, Abyss Lord - Evil Beast, Abyss Lord - Tyran, Black Dragon and Abyss Lord - Hardin Black Death!",
    Daily = false,
    BeginConditions = {
        NoMission = {838},
        LvCheck_HigherThan = 65
        --  LvCheck_LowerThan = 70,
        -- HasRecord = 705,
    },
    Need = {
        Items = {{
            ID = 9617,
            Qty = 10
        } -- {ID = 10005, Qty = 2}
        },
        Kills = {{
            ID = 979,
            Qty = 5
        }, {
            ID = 980,
            Qty = 5
        }, {
            ID = 981,
            Qty = 5
        }, {
            ID = 982,
            Qty = 5
        }, {
            ID = 789,
            Qty = 5
        }}
    },
    Rewards = {
        Items = {{
            ID = 32324,
            Qty = 1,
            Quality = 4
        }, --	Mount Fragment
        {
            ID = 32408,
            Qty = 1,
            Quality = 4
        } --	Mount Fragment
        -- {ID = 9603, Qty = 1, Quality = 4}, -- 100 Million Dollar Note
        -- {ID = 9600, Qty = 1, Quality = 4} --5% Experience Seed
        },
        Money = 0,
        BagSpace = 3
    },
    ResultCondition = {
        HasFairy = 16
    },
    ResultAction = {
        GiveFairyExp = {100, 200}

    },
    GiveSelectedReward = true, -- option to give only one prize of total rewards
    HelpDialog = "Very helpful!",
    ResultDialog = "It seems like you're a true warrior! I'll gladly reward you."
}, {
    NpcID = 837,
    MissionID = 837,
    -- MissionSignIcon = QuestDaily,
    Name = "Lion's Necklace",
    InitDialog = "Bring me <rx5 Pirate Scroll, x5 King of Argent and x5 Glacier Emblem >. Also, you will need to kill 5x of each boss; <rBlack Dragon, Morpheus Abyss Demon, Fury Kara, and Abyss Supreme!",
    Daily = false,
    BeginConditions = {
        NoMission = {837},
        LvCheck_HigherThan = 65
        -- LvCheck_LowerThan = 67,
        -- HasRecord = 705,
    },
    Need = {
        Items = {{
            ID = 9617,
            Qty = 5
        }, {
            ID = 9978,
            Qty = 5
        }, {
            ID = 9980,
            Qty = 5
        }},
        Kills = {{
            ID = 789,
            Qty = 5
        }, {
            ID = 1117,
            Qty = 5
        }, {
            ID = 1109,
            Qty = 5
        }, {
            ID = 988,
            Qty = 5
        }}
    },
    Rewards = {
        Items = {{
            ID = 9952,
            Qty = 1,
            Quality = 4
        } --	Lion's Neck
        -- {ID = 32409, Qty = 1, Quality = 4}
        -- {ID = 15429, Qty = 1, Quality = 4}, --	Mount Fragment
        -- {ID = 15349, Qty = 1, Quality = 4}, -- 100 Million Dollar Note
        -- {ID = 15361, Qty = 1, Quality = 4} --5% Experience Seed
        },
        Money = 0,
        BagSpace = 3
    },
    GiveSelectedReward = false, -- option to give only one prize of total rewards
    HelpDialog = "Very helpful!",
    ResultDialog = "It seems like you're a true warrior! I'll gladly reward you."
}, {
    NpcID = 817,
    MissionID = 817,
    Name = "Random Power Ring Quest",
    InitDialog = "Bring me <rx5 Ring Scroll and x5 King of Icicle >. Also, you will need to kill 5x of each boss; <rWandering Soul, Snowman Warlord, Barbosa, and Vicious Relic Protector!",
    Daily = false,
    -- MissionSignIcon = QuestDaily,
    BeginConditions = {
        NoMission = {817},
        LvCheck_HigherThan = 65
        -- LvCheck_LowerThan = 46,
        -- HasRecord = 705,
    },
    Need = {
        Items = {{
            ID = 9618,
            Qty = 5
        }, {
            ID = 9979,
            Qty = 5
        }},
        Kills = {{
            ID = 679,
            Qty = 5
        }, {
            ID = 678,
            Qty = 5
        }, {
            ID = 805,
            Qty = 5
        }, {
            ID = 1113,
            Qty = 5
        }}
    },
    Rewards = {
        Items = {{
            ID = 9962,
            Qty = 1,
            Quality = 4
        } --	Mount Fragment
        -- {ID = 15429, Qty = 1, Quality = 4}, --	Mount Fragment
        -- {ID = 15349, Qty = 1, Quality = 4}, -- 100 Million Dollar Note
        -- {ID = 15361, Qty = 1, Quality = 4} --5% Experience Seed
        },
        Money = 0,
        BagSpace = 3
    },
    GiveSelectedReward = false, -- option to give only one prize of total rewards
    HelpDialog = "Very helpful!",
    ResultDialog = "It seems like you're a true warrior! I'll gladly reward you."
}, {
    NpcID = 400,
    MissionID = 400,
    Name = "Admiral Cloak Quest",
    InitDialog = "You have to defeat the main bosses of Abaddon and Black Dragon Lair! If you can complete this task, you will be rewarded for your hard works!",
    Daily = false,
    -- MissionSignIcon = QuestDaily,
    BeginConditions = {
        NoMission = {400},
        LvCheck_HigherThan = 65
        -- LvCheck_LowerThan = 46,
        -- HasRecord = 705,
    },
    Need = {
        Items = {{
            ID = 10013,
            Qty = 15
        }, {
            ID = 9989,
            Qty = 10
        }},
        Kills = {{
            ID = 789,
            Qty = 7
        }, {
            ID = 1836,
            Qty = 7
        }, {
            ID = 988,
            Qty = 7
        }, {
            ID = 987,
            Qty = 7
        }, {
            ID = 974,
            Qty = 7
        }}
    },
    Rewards = {
        Items = {{
            ID = 9603,
            Qty = 1,
            Quality = 4
        }, {
            ID = 9605,
            Qty = 1,
            Quality = 4
        }},
        Money = 0,
        BagSpace = 3
    },
    GiveSelectedReward = false, -- option to give only one prize of total rewards
    HelpDialog = "Very helpful!",
    ResultDialog = "It seems like you're a true warrior! I'll gladly reward you."
}, {
    NpcID = 402,
    MissionID = 402,
    Name = "Random Lv65 Accessories or Cloak Uprade",
    InitDialog = "You have to defeat the main bosses of Abaddon! If you can complete this task, you will be rewarded for your hard works!",
    Daily = false,
    -- MissionSignIcon = QuestDaily,
    BeginConditions = {
        NoMission = {402},
        LvCheck_HigherThan = 65
        -- LvCheck_LowerThan = 46,
        -- HasRecord = 705,
    },
    Need = {
        Items = {{
            ID = 9985,
            Qty = 1
        }, {
            ID = 9617,
            Qty = 10
        }},
        Kills = {{
            ID = 979,
            Qty = 5
        }, {
            ID = 980,
            Qty = 5
        }, {
            ID = 981,
            Qty = 5
        }, {
            ID = 982,
            Qty = 5
        }, {
            ID = 983,
            Qty = 5
        }}
    },
    Rewards = {
        Items = {{
            ID = 32389,
            Qty = 1,
            Quality = 4
        }, --	Mount Fragment
        {
            ID = 9605,
            Qty = 1,
            Quality = 4
        }, --	Mount Fragment
        {
            ID = 32409,
            Qty = 1,
            Quality = 4
        } -- {ID = 15349, Qty = 1, Quality = 4}, -- 100 Million Dollar Note
        -- {ID = 15361, Qty = 1, Quality = 4} --5% Experience Seed
        },
        Money = 0,
        BagSpace = 3
    },
    GiveSelectedReward = true, -- option to give only one prize of total rewards
    HelpDialog = "Very helpful!",
    ResultDialog = "It seems like you're a true warrior! I'll gladly reward you."
}}
