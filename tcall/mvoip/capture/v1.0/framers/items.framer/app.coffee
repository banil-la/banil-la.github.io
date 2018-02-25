layerA = new Layer
	width: Screen.width
	height: Screen.height

child = new Layer
	parent: layerA
	width: Screen.width
	height: 100
	x: 30
	y: Align.bottom

child.states.default = 
	x: 30
	animationOptions:
		time: 0.3
		curve: Spring(damping: 0.8)
	
child.states.active = 
	x: 0
	animationOptions:
		time: 0.3
		curve: Spring(damping: 0.8)

layerA.onClick ->
	child.stateCycle(['default', 'active'])
	if child.states.current.name is 'default'
		child.opacity = 0
	else 
		child.opacity = 1