REBOL [
	Title: "Layouts example #37"
	Author: "Bolek"
	Version: "$Id: $"
]

;---- Tests

view [
	gr: hgroup 300x200
	button "press me" on-action [
		append-content gr [button "pokus"]
		remove-content gr
	]
]