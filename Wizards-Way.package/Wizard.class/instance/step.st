as yet unclassified
step

	super step.
	
	"collision handling"
	standsOnGround
		ifTrue: [self velocity: 0.0]
		ifFalse: [
			|deltaTime|
			deltaTime := self stepTime.		
			self moveVerticalBy: deltaTime * velocity.
			velocity:=  velocity + (deltaTime * Game gravity).
		].
	
	"death handling"
	(self owner contains: self) ifFalse: [
		Transcript show: 'died'.
		self owner reset.].