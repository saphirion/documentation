REBOL [
	Title: "Layouts example #27"
	Author: "Richard Smolak Pekr"
]

;---- Tests
lay: [
	when [load] on-action [print "Load trigger!"]
	button "Do" on-action [request "Alert" "Button pressed!"]
	button "Big Quit Button" maroon options [max-size: 2000x50] on-action [quit]
	bar
	text "Toggle button..."
	t1: toggle "Toggle" ;of 'tog
	button "Set above Toggle False" on-action [set-face t1 false]
	button "Set above Toggle True"  on-action [set-face t1 true]
	toggle "Toggle Mirror" attach 't1
	toggle "Mutex with Toggle" ;of 'tog
	bar
	text "Radios and check boxes"
	radio "Set above Toggle on" on-action [set-face t1 true]
	radio "Set above Toggle off" on-action [set-face t1 false]
	bar
	check "Checkbox attached to above toggle" attach 't1
]

okno: layout lay

view okno
