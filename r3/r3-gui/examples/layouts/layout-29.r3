REBOL [
	Title: "Layouts example #29"
	Author: ["Ladislav Mecir" "Richard Smolak"]
	Version: "$Id: $"
	Date: 30-Mar-2011/16:33:52+2:00
	Notes: {
		This is a "low level example" used as a template to implement resizers
	}
]

view/options [
	title "column resize example"
	a: hpanel 2 [
		box 200x200 red box 200x200 green
		box 200x200 yellow box 200x200 blue
	]
	button "resize" on-action [
		a/facets/column-init: reduce [
			79 + random 241
			'max
		]
		update-face/content a
	]
][
	title: "Layouts example #29"
]