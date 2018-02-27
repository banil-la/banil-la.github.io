layerA = new Layer
	x: Align.center
	y: Align.center
	borderRadius: '50%'

layerA.states.default =
	y: Align.center
	animationOptions:
# 		curve: Spring(damping: 0.8)
		time: 0.2

layerA.states.toggled = 
	y: layerA.y-200
	animationOptions:
# 		curve: Spring(damping: 0.6)
		time: 0.2

layerA.onClick ->
	if layerA.states.current.name is "default"
		layerA.animate
			scale: 0.6
			options:
# 				curve: Spring(damping: 0.6)
				time: 0.2
				delay: 0.1
	else 
		layerA.animate
			scale: 1
			options:
# 				curve: Spring(damping: 0.6)
				time: 0.2
	layerA.stateCycle(["default", "toggled"])