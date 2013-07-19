REBOL [
	Title: "Demonstrate that the Window is itself a panel"
	Author: "Henrik Mikael Kristensen"
]

; When using the /options refinement to VIEW and the BREAK-AFTER word
; we can define how many faces it takes, before they are wrapped to a new line.

; Using break-after = 0 is equivalent to using the /across refinement.

view/options [
	button
	button
	button
	button
	button
	button
] [
	title: "This window breaks after 3 faces."
	break-after: 3
]