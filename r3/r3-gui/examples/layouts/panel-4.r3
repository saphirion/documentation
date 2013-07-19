REBOL [
	Title: "Open a Window with Tight Panels inside Tight Panels"
	Author: "Henrik Mikael Kristensen"
]

; This will open a window with tight panels inside tight panels.

; HTIGHT and VTIGHT are used for tightly grouping faces.

; They are otherwise functionally identican to HPANEL and VPANEL.

; See Example panel-3.r3.

; The spacing between the black box and the rest show the default
; spacing for the window.

view [
	box
	htight [
		box orange
		htight [
			box red
			box red
		]
		vtight [
			box blue
			htight [
				box green
				box green
			]
		]
	]
]