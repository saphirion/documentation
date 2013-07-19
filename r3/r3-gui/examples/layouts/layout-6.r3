REBOL [
	Title: "Layouts example #6"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-6.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    hgroup [
        button "First"
        button "Second"
    ] options [spacing: 0x0]
]
