REBOL [
	Title: "Open a Window with Groups"
	Author: "Henrik Mikael Kristensen"
]

; This will open a window with horizontal and vertical groups.

; Groups group faces together in a way, where cells will adapt
; to their content size in a particular direction, while maintaining
; an even weighting in the opposite direction.

; HGROUP will lay out faces horizontally and adapt content horizontally.
; VGROUP will lay out faces vertically and adapt content vertically.

; Using the RETURN word, you can break to a new row or column at any time.

; HGROUP and VGROUP do not support fixed break sizes, like HPANEL and VPANEL.

view [
	title "Horizontal Group"
	hgroup [
		box red ; box is used, as it can exist at any size
		box yellow
		box blue
		return
		box black
		box green
	]

	title "Vertical Group"
	vgroup [
		box red
		box yellow
		box blue
		return
		box black
		box green
	]
]