REBOL [
	Title: "Layouts example #12"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-12.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    hgroup [
        vpanel [
            button "First"
            button "Second"
        ]
        vpanel [
            button "Third"
            button "Fourth"
        ]
        vpanel [
            button "Fifth"
            button "Sixth"
        ]
    ]
]