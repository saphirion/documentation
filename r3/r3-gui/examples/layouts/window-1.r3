REBOL [
	Title: "Demonstrate that the Window is itself a panel"
	Author: "Henrik Mikael Kristensen"
]

; This will show a window with alternative layout direction

; When using the /across refinement to VIEW,
; the window will layout horizontally instead of vertically

view/across [
	button
	button
	button
	button
	button
	button
]