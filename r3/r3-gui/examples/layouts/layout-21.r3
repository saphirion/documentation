REBOL [
	Title: "Layouts example #21"
	Author: "Richard Smolak"
	Version: "$Id: layouts-21.r3 852 2010-10-07 13:28:26Z cyphre $"
]

view [
	vpanel 2 [
		hpanel [
			button "1"
			button "2"
			button "3"
		]

		vpanel [
			button "1"
			button "2"
			button "3"
		]
		
		hpanel 2 [
			button "1"
			button "2"
			button "3"
		]

		vpanel 2 [
			button "1"
			button "2"
			button "3"
		]
	]
]