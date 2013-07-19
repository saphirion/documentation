REBOL [
	Title: "Layouts example #33"
	Author: "Richard Smolak"
]

stylize [
	small-box: box [
		facets: [
			init-size: 30x30	
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
	title "Face alignment examples - PANEL"
	hpanel 3 [
		head-bar "hpanel: align"
		head-bar "hpanel: valign"
		head-bar "hpanel: align+valign"
		
		hframe [
			small-box red options [align: 'left]
			div
			small-box green options [align: 'center]
			div
			small-box blue options [align: 'right]
		] options [
			min-hint: [auto 180]
			column-min: [60 max 60 max 60]
			column-max: [60 max 60 max 60]
		]

		hframe [
			small-box red options [valign: 'top]
			div
			small-box green options [valign: 'middle]
			div
			small-box blue options [valign: 'bottom]
		] options [
			column-min: [60 max 60 max 60]
			column-max: [60 max 60 max 60]
		]

		hframe [
			small-box red options [align: 'left valign: 'bottom]
			div
			small-box green options [align: 'center valign: 'middle]
			div
			small-box blue options [align: 'right valign: 'top]
		] options [
			min-hint: [auto 60]
			column-min: [60 max 60 max 60]
			column-max: [60 max 60 max 60]
		]

		head-bar "vpanel: align"
		head-bar "vpanel: valign"
		head-bar "vpanel: align+valign"
		
		vframe [
			small-box red options [align: 'left]
			bar
			small-box green options [align: 'center]
			bar
			small-box blue options [align: 'right]
		] options [
			row-min: [60 max 60 max 60]
			row-max: [60 max 60 max 60]
		]

		vframe [
			small-box red options [valign: 'top]
			bar
			small-box green options [valign: 'middle]
			bar
			small-box blue options [valign: 'bottom]
		] options [
			row-min: [60 max 60 max 60]
			row-max: [60 max 60 max 60]
		]
		
		vframe [
			small-box red options [align: 'left valign: 'bottom]
			bar
			small-box green options [align: 'center valign: 'middle]
			bar
			small-box blue options [align: 'right valign: 'top]
		] options [
			row-min: [60 max 60 max 60]
			row-max: [60 max 60 max 60]
		]
	]
][
	title: "Layouts example #33"
]