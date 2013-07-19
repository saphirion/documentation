REBOL [
	Title: "Layouts example #1"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-1.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    text "Example window."
    button "Close" on-action [close-window face]
]
