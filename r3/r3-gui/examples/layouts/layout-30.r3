REBOL [
	Title: "Layouts example #30"
	Author: "Ladislav Mecir"
	Version: "$Id: $"
	Date: 11-Apr-2011/16:15:30+2:00
]

view/options [
	title "resize example"
	h: hpanel [
		a: box 200x200 red
	]
	button "resize" on-action [
		w: window-face? h
		old-init: w/facets/init-size
		a/facets/init-size/x: 119 + random 161
		update-face/no-show a
		do-actor w 'on-update none
		do-actor w 'on-resize w/facets/gob-size
			* w/facets/init-size / old-init
		draw-face w			
	]
][
	title: "Layouts example #30"
]