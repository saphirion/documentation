REBOL [
	Title: "Layouts example #16"
	Author: "Ladislav Mecir Richard Smolak"
	Version: "$Id: layouts-16.r3 1959 2011-03-03 18:38:34Z cyphre $"
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
        button "2"
        button "3"
    ] options [margin: [30x30 30x30]]

    vpanel [
        button "1"
        button "2"
        button "3"
    ] options [
        padding: [30x30 30x30]
    ]

    vpanel [
        button "1"
        button "2"
        button "3"
    ] options [
        spacing: 20x20
    ]
]