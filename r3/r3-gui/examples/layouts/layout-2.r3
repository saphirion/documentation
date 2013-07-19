REBOL [
	Title: "Layouts example #2"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-2.r3 1959 2011-03-03 18:38:34Z cyphre $"
]

;---- Tests

view [
    vpanel [
        text "Show website"
        button "Show" on-action [browse http://www.rebol.com]
    ]
    vpanel [
        text "Example window."
        button "Close" on-action [close-window face]
    ]
]