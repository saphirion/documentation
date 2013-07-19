REBOL [
	Title: "Layouts example #36"
	Author: "Richard Smolak"
]

stylize [
	small-box: box [
		facets: [
			max-size: 30x30
			bg-color: white
		]
	]
	hframe: hgroup [
		facets: [
			border-color: black
			border-size: [1x1 1x1]
		]
	]
	vframe: vgroup [
		facets: [
			border-color: black
			border-size: [1x1 1x1]
		]
	]
]

view/options [
	title "Content alignment examples - GROUP"
	hpanel 3 [
		head-bar "hgroup: pane-align"
		head-bar "hgroup: pane-valign"
		head-bar "hgroup: pane-align+pane-valign"

		hframe 150x150 [
			small-box red
			return
			small-box green
			small-box blue
			return
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right]

		hframe 150x150 [
			small-box red
			return
			small-box green
			small-box blue
			return
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-valign: 'bottom]

		hframe 150x150 [
			small-box red
			return	
			small-box green
			small-box blue
			return
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right pane-valign: 'bottom]

		head-bar "vgroup: pane-align"
		head-bar "vgroup: pane-valign"
		head-bar "vgroup: pane-align+pane-valign"
		
		vframe 150x150 [
			small-box red
			return	
			small-box green
			small-box blue
			return
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right]

		vframe 150x150 [
			small-box red
			return	
			small-box green
			small-box blue
			return
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-valign: 'bottom]

		vframe 150x150 [
			small-box red
			return	
			small-box green
			small-box blue
			return
			small-box cyan
			small-box magenta
			small-box yellow
		] options [pane-align: 'right pane-valign: 'bottom]
	]
][
	title: "Layouts example #36"
]