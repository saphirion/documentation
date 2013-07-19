REBOL [
	Title: "Layouts example #15"
	Author: "Ladislav Mecir Richard Smolak"
	Version: "$Id: layouts-15.r3 2311 2011-04-08 11:51:47Z cyphre $"
]

;---- Tests

submit: [
	"Submit content to a URL or other receiver."
	dest [url! file! function! none!]
][
	blk: get-parent-layout face ; collect all values

	switch type?/word :dest [
		function! [dest face blk]
		url! file! [
			probe attempt [to-string write dest to-binary probe mold/all blk]
		]
		none! [print mold/all blk]
	]
]



view/options [
    title "Opinion Survey"
    text "Do you want programs to be easy to build?"
    p: hpanel 2 [
        label "Answer:"
        hgroup [
            radio "Agree" #"a"
            radio "Disagree" #"d"
            radio "Not sure" #"n"
        ] options [min-hint: 'init max-hint: 'init]
        pad
        check "I'm a programmer." #"p"
        pad
        check "I am also a REBOL expert." #"e"
        label #"m" "Name:" options [access-face: 'fld]		;access-face redirects the 'access key' action to other face
        fld: field
        label #"o" "Comment:" options [access-face: 'ar] 
        ar: area
    ] options [row-max: [25 min min max max] column-max: [init max] box-model: 'frame]
    hgroup [
        button "Submit" on-action [probe submit http://www.rebol.net/cgi/submit.r]
        button #"r" "Reset" on-action [do-actor p 'on-reset none]
        button "Cancel" on-action [close-window face]
    ]
][
	title: "Layouts example #15"
	;access-keys are ctrl+shift+<key> actions that can be used as shortcuts for any face in the layout
	access-keys: [	;used for remapping of the default access keys
		#"r" #"a"	;this means default key #"r" will be mapped to ctrl+shift+g keypress
	]
	;shortcut-keys are user defined keyboard actions
	shortcut-keys: [
		#"^[" [unview halt]
		#"^Q" [
			print ["shortcut test" mold arg/flags]
		]
	]
]