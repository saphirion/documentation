REBOL [
	Title: "Layouts example #34"
	Author: "Richard Smolak"
]

stylize [
	small-box: box [
		facets: [
			max-size: 50x50
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
	title "Face alignment examples - GROUP"
	hpanel 400x200 2 [
		head-bar "hgroup: valign"
		head-bar "vgroup: align"
		
		hframe [
			small-box red options [valign: 'top]
			div
			small-box green options [valign: 'middle]
			div
			small-box blue options [valign: 'bottom]
		] 

		vframe [
			small-box red options [align: 'left]
			bar
			small-box green options [align: 'center]
			bar
			small-box blue options [align: 'right]
		]
	]
][
	title: "Layouts example #34"
]