REBOL [
	Title: "Open a Window with Panels with automatic wrapping"
	Author: "Henrik Mikael Kristensen"
]

; This will open a window with horizontal and vertical panels.

; When the layout block for a panel is preceded by an integer!,
; the panel will wrap at that number of elements.

; If the integer is 0, the panel will not wrap

view [
	title "Horizontal Panel which wraps at 3 faces"
	hpanel 3 [button field button button button]

	title "Vertical Panel which wraps at 3 faces"
	vpanel 3 [button field button button button]
	
	title "Horizontal Panel which wraps at 0 faces"
	hpanel 0 [button field button button button]
	
	title "Vertical Panel which wraps at 0 faces"
	vpanel 0 [button field button button button]
]