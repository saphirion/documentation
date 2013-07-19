REBOL [
	Title: "Layouts example #25"
	Author: "Richard Smolak"
]

;---- Tests

view/options [
    title "Inline SHOW modes example"
	hpanel 3 [
		button "1" options [show-mode: 'hidden]
		button "2" options [show-mode: 'visible]
		button "3" options [show-mode: 'ignored]
		button "4" options [show-mode: 'fixed gob-offset: 5x5 gob-size: 100x20]
		hpanel [
			button "5 Close" on-action [close-window face]
		]
		options [show-mode: 'fixed gob-offset: 150x25]
		button "6"
		button "7"
	]
][
	title: "Layouts example #25"
]
