REBOL [
	Title: "Layouts example #23"
	Author: "Richard Smolak"
	Version: "$Id: layouts-23.r3 852 2010-10-07 13:28:26Z cyphre $"
]

stylize [
	wide-button: button [
		facets: [
			max-size: as-pair guie/max-coord 24
		]
	]
]

view [
	 vpanel [
		area
		hgroup [
			wide-button
			f: field
			return
			drop-down check
		]
		p: hpanel [
			button toggle button
		]

		b: wide-button "resize field" on-action [
			f/facets/init-size/x: 50 + random 100
			update-face f
		]
		wide-button "resize panel" on-action [
			p/facets/init-hint: reduce [200 + random 400 'auto]
			update-face/content p
		]
	] options [
		column-max: 'min
	]
]