REBOL [
	Title: "Open a Window with Panels inside Panels"
	Author: "Henrik Mikael Kristensen"
]

; This will open a window with panels inside panels.

view [
	box
	hpanel [
		box orange
		hpanel [
			box red
			box red
		]
		vpanel [
			box blue
			hpanel [
				box green
				box green
			]
		]
	]
]