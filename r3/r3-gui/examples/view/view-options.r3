REBOL [
	Title: "Open a Window with /options"
	Author: "Henrik Mikael Kristensen"
]

; This will open a window with a single text face
; Using the /options refinement, we can set various aspects of the window

view/options [
	text "R3 GUI Works"
] [
	title: "My Window"
]