as yet unclassified
wasBelow: aMorph
"answers if self was below an other morph (note that 0@0 is in the top left corner)"
	^ (lastBounds top >= aMorph bottom) or: [self top >= aMorph lastBounds bottom]