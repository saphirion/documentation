REBOL [
	Title: "Layouts example #30"
	Author: "Ladislav Mecir"
	Version: "$Id: $"
	Date: 10-Jul-2012/15:08:05+2:00
]

view/options [
	title "resize example"
	h: hpanel [
		a: box 200x200 red
	]
	button "resize" on-action [
		w: window-face? h
		a/facets/init-size/x: 119 + random 161
		a/facets/init-size/y: a/facets/gob-size/y
		update-face/no-show a
		do-actor w 'on-update none
		do-actor w 'on-resize w/facets/init-size
		draw-face w			
	]
][
	title: "Layouts example #30"
]