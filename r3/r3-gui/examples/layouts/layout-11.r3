REBOL [
	Title: "Layouts example #11"
	Author: "Ladislav Mecir Richard Smolak"
	Version: "$Id: layouts-11.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    hgroup [
        button "First"
        button "Second"
        button "Third"
        button "Fourth"
        button "Fifth"
        button "Sixth"
    ] options [border-color: black border-size: [1x1 1x1]]
]
