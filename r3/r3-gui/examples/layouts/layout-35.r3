REBOL [
	Title: "Layouts example #35"
	Author: "Richard Smolak"
]

stylize [
	small-box: box [
		facets: [
			max-size: 30x30
			bg-color: white
		]
	]
	hframe: hpanel [
		facets: [
			border-color: black
			border-size: [1x1 1x1]
		]
	]
	vframe: vpanel [
		facets: [
			border-color: black
			border-size: [1x1 1x1]
		]
	]
]

view/options [
	title "Content alignment examples - PANEL"
	hpanel 3 [
		head-bar "hpanel: pane-align"
		head-bar "hpanel: pane-valign"
		head-bar "hpanel: pane-align+pane-valign"
	
		hframe 150x150 3 [
			small-box red
			small-box green
			small-box blue
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right]

		hframe 150x150 3 [
			small-box red
			small-box green
			small-box blue
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-valign: 'bottom]

		hframe 150x150 3 [
			small-box red
			small-box green
			small-box blue
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right pane-valign: 'bottom]
		
		head-bar "vpanel: pane-align"
		head-bar "vpanel: pane-valign"
		head-bar "vpanel: pane-align+pane-valign"
		
		vframe 150x150 3 [
			small-box red
			small-box green
			small-box blue
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right]

		vframe 150x150 3 [
			small-box red
			small-box green
			small-box blue
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-valign: 'bottom]

		vframe 150x150 3 [
			small-box red
			small-box green
			small-box blue
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right pane-valign: 'bottom]
	]
][
	title: "Layouts example #35"
]