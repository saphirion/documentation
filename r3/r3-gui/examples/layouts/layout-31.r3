REBOL [
	Title: "Layouts example #31"
	Author: "Richard Smolak Ladislav Mecir"
]

;---- Tests


stylize [
	hp: hpanel [
		
		facets: [
			names: true
		]
		
		content: [
			p: hpanel 100x100 options [min-hint: 'init max-hint: 'init]
;			s: scroller
		]
		
		actors: [
			on-set: [
				face/names/p/facets/init-hint: [auto 100]
				set-content face/names/p arg/2
				show-later face
			]
		]
		
	]
]

view/options [
	title "panel overflow example"
	hgroup [
		button "set 2 buttons" on-action [
			set-face h [
				button "1"
				button "2"
			]
		]
		button "set 4 buttons" on-action [
			set-face h [
				button "1"
				button "2"
				button "3"
				button "4"
			]
		]
		button "set 6 buttons" on-action [
			set-face h [
				button "1"
				button "2"
				button "3"
				button "4"
				button "5"
				button "6"
			]
		]
	]
	h: hp options [init-hint: [600 auto] min-hint: 0x0 max-hint: guie/max-pair]
][
	title: "Layouts example #31"
]
