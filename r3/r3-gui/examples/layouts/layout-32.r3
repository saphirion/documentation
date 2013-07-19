REBOL [
	Title: "Layouts example #32"
	Author: "Richard Smolak"
]

;---- Tests


stylize [
	scroll-pane: hgroup [
		facets: [
			init-hint: 'auto
			min-hint: 'init 
			max-hint: 'init
		]
		draw: [
			fill-pen red
			clip 0x0 (viewport-box/bottom-right)
			box 0x0 (viewport-box/bottom-right - 1)
		]
	]

	viewport: hpanel [
		facets: [
			bg-color: sky
			min-hint: 'init
			max-hint: guie/max-pair
		]
	]
	browser: hpanel [
		facets: [
			break-after: 2
			names: true
			init-hint: 300x200
			min-hint: 'init
			max-hint: guie/max-pair
		]
		options: [
			init-hint: [pair!]
			browser-content: [block!]
		]
		content: [
			vp: viewport [
				sp: scroll-pane []
			]
			scroller
			scroller
		]
		actors: [
			on-init: [
				face/names/vp/facets/init-hint: face/facets/init-hint - 30
				set-content/no-show face/names/sp face/facets/browser-content
			]
		]
	]
]

view/options [
	title "Browser-like layout example"
	browser [
		button button button button
		return
		button button button button button button button button
		return
		button button 
		return
		button button button
		return
		button
		return
		button
		return
		button
		return
		button
		return
		button
		return
		button
	]
][
	title: "Layouts example #32"
]
