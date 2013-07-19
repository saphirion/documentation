REBOL [
	Title: "Layouts example #14"
	Author: "Ladislav Mecir"
	Version: "$Id: layouts-14.r3 1959 2011-03-03 18:38:34Z cyphre $"
	Date: 22-Dec-2010/18:15:47+1:00
]

;---- Tests

view [
    hgroup [
        button "First"
        button "Second"
		return
		button "Third"
        button "Fourth"
        button "Fifth"
        return
        button "Sixth"
        button "Seventh"
        button "Eighth"
        button "Nineth"
    ] options [pane-align: 'center]
]
