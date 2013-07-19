REBOL [
	Title: "Layouts example #28"
	Author: ["Ladislav Mecir" "Richard Smolak"]
	Version: "$Id: $"
	Date: 30-Mar-2011/16:03:33+2:00
	Notes: {
		This is a "low level example" used as a template to implement dividers
	}
]

view/options [
	title "divide example"
	a: hpanel 2 [
		box 100x100 red
		box 100x100 green
		box 100x100 yellow
		box 100x100 blue
	]
	button "divide" on-action [
		a/facets/column-init:
			head insert/dup copy [] 'max length? a/facets/intern/init-widths
		a/facets/column-init/1: 19 + random 161
		a/facets/column-init/2: 200 - a/facets/column-init/1
		update-face/content a
	]
][
	title: "Layouts example #28"
]