bg = new BackgroundLayer
	backgroundColor: '#0f0'

layerA = new Layer
	backgroundColor: '#fff'
	borderRadius: '50%'
	point: Align.center

animationA = new Animation layerA,
	scale: 1.2
	options:
		time: 0.3
		curve: Spring(damping: 0.6)
animationB = animationA.reverse()
 
animationA.on Events.AnimationEnd, animationB.start

 
flash = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: '#fff'
	opacity: 0
flashAnim = new Animation flash,
	opacity: 0.6
	options:
		time: 0.2
flashAnimReverse = flashAnim.reverse()
flashAnim.on Events.AnimationEnd, flashAnimReverse.start
 
layerA.onClick ->
	Utils.delay 0.3, ->
		animationA.start()
	flashAnim.start()
	
