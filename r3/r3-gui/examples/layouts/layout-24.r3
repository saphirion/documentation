REBOL [
	Title: "Layouts example #24"
	Author: "Richard Smolak"
	Version: "$Id: layouts-24.r3 852 2010-10-07 13:28:26Z cyphre $"
]

update-btn: func [
	btn [object!]
	id [integer!]
][
	id: pick [visible hidden ignored fixed] id	
	if id = 'fixed [
		btn/gob/offset: random 100x100
	]
	show-face btn id
]

view/options [
	title "SHOW modes test example"
	hpanel 3 [
		b1: button "one"
		b2: button "two"
		b3: button "three"
		b4: button "four"
		b5: button "five"
		b6: button "six"
	]
	hgroup [
		drop-down ["visible" "hidden" "ignored" "fixed"] on-action [update-btn b1 arg]
		drop-down ["visible" "hidden" "ignored" "fixed"] on-action [update-btn b2 arg]
		drop-down ["visible" "hidden" "ignored" "fixed"] on-action [update-btn b3 arg]
		return
		drop-down ["visible" "hidden" "ignored" "fixed"] on-action [update-btn b4 arg]
		drop-down ["visible" "hidden" "ignored" "fixed"] on-action [update-btn b5 arg]
		drop-down ["visible" "hidden" "ignored" "fixed"] on-action [update-btn b6 arg]
	]
][
	title: "Layouts example #24"
]

