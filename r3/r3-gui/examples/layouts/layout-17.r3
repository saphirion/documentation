REBOL [
	Title: "Layouts example #17"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-17.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    vpanel [
        button "1"
        button "2"
        button "3"
    ]

    vpanel [
        button "1"
        pad
        button "2"
        button "3"
    ]

    vpanel [
        button "1"
        pad 10x20
        button "2"
        button "3"
    ]
]
