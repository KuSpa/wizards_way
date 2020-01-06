as yet unclassified
step

	|standsOnGround|
	
		
	"when we go out of bounds, we die because of black magic"
	(self owner contains: self) ifFalse: [
		Transcript showln: 'died through black magic'.
		^self owner reset.].	
			
	"test for ground and collisions"
	standsOnGround := false.
	(self owner platforms select: [:platform | self intersects: platform])
		do: [ :platform |	
			((self bottom - platform top)  <= 1 and: [velocity abs <= 1.1])
					ifTrue: [	velocity := 0]
					ifFalse:[			
						(platform wasBelow: self) 
						ifTrue: [
							Transcript showln: 'intersect from above '.
							velocity:= (self intersect: platform) height negated.
							standsOnGround := true]
						ifFalse:[
							"we hit something, but not with our feet..."
							Transcript showln: 'died through collision.'.
							^self owner reset
							]]].					
			
	standsOnGround ifFalse: [velocity:=  velocity + Game gravity].	
	
	"save last bounds"
	super step.	
	
	"movement"
	self moveVerticallyBy: velocity.