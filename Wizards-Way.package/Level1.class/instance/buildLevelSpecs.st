as yet unclassified
buildLevelSpecs

	|platform|
	
	self addMorph: Wizard new.
	
	platform :=Platform new.
	self addMorph: platform.
	platform bounds: (Rectangle left: 10 right: 300 top: 250 bottom: 280).
	
	
	^ self