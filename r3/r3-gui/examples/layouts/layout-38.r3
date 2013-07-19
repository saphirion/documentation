Rebol []

view [
	gr: hgroup 300x200
	button "append first" on-action [
		append-content gr [button "pokus" return]
	]
	button "append other" on-action [
		f: first back back tail faces? gr
		remove-content/pos gr f
		append-content gr [button "pokus 2"]
		append-content gr f		
	]
]
