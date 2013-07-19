REBOL [
	Title: "Layouts example #13"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-13.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    vgroup [
        hpanel 2 [
            button "First"
            button "Second"
        ]
        hpanel 2 [
            button "Third"
            button "Fourth"
        ]
        hpanel 2 [
            button "Fifth"
            button "Sixth"
        ]
    ]
]