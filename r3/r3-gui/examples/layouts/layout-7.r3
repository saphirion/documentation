REBOL [
	Title: "Layouts example #7"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-7.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    hpanel 2 [
        button "First"
        button "Second"
        button "Third"
        button "Fourth"
        button "Fifth"
        button "Sixth"
    ]
]