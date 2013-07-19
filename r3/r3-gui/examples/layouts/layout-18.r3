REBOL [
	Title: "Layouts example #18"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-18.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    hpanel 2 [
        button "1"
        button "2"
        pad
        button "3"
    ]
]