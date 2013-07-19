REBOL [
	Title: "Layouts example #8"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-8.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    hgroup [
        button "First"
        button "Second"
        return
        button "Third"
        button "Fourth"
        return
        button "Fifth"
        button "Sixth"
    ]
]
