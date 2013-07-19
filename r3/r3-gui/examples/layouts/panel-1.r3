REBOL [
	Title: "Open a Window with Panels"
	Author: "Henrik Mikael Kristensen"
]

; This will open a window with horizontal and vertical panels.

; Panels group faces together in a grid-like fashion.
; HPANEL will lay out faces horizontally.
; VPANEL will lay out faces vertically.

load-gui

view [
	label "Horizontal Panel"
	hpanel [button field button]

	label "Vertical Panel"
	vpanel [button field button]
]