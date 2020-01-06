event handling
platforms
	^ self submorphs select: [:morph | (morph class  == Platform)].