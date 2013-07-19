REBOL [
	Title: "Layouts example #26"
	Author: "Ladislav Mecir Richard Smolak"
	Version: "$Id: $"
]

;---- Tests

stylize [
    boxa: box [
        facets: [
			init-size: 32x32
			bg-color: none
		]
		options: [
			init-size: [pair!]
			box-color: [tuple!]
		]
        draw: [
			pen 0.0.0
			line-width 1.2
			fill-pen box-color
			box 1x1 (gob-size - 2) 3
        ]
		actors: [
			on-draw: [
				arg
			]
		]
    ]
    pada: pad [
        facets: [max-size: 10x10]
    ]
]

view [
    hgroup [
        boxa red
        boxa green
        boxa blue
        return
        boxa red   options [max-size: 100x32]
        boxa green options [max-size: 200x32]
        boxa blue  options [max-size: 400x32]
    	return
        boxa red   options [max-size: 100x32]
        boxa green options [max-size: 2000x32]
        boxa blue  options [max-size: 4000x32]
    	return
        boxa red   options [max-size: 100x32]
        pad
        boxa green options [max-size: 2000x32]
        pad
        boxa blue  options [max-size: 4000x32]
    	return
        boxa red   options [max-size: 100x32]
        pada
        boxa green options [max-size: 2000x32]
        pada
        boxa blue  options [max-size: 4000x32]
    ]
]
