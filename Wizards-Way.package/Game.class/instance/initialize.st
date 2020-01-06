as yet unclassified
initialize

	super initialize.
	self width: 1000.
	self height: 400.
	self addMorph: (Level1 new bounds: self bounds).
	