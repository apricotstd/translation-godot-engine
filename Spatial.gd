extends Spatial

var speed: float = 0.01

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("CSGBox").translation.z += delta #speed
	get_node("CSGCylinder").translation.y += speed #delta
	get_node("CSGPolygon").translation.x += delta #speed
	get_node("CSGSphere").translate(Vector3(speed, speed, 0)) #delta
	get_node("CSGTorus").translate(Vector3(-(delta), -(delta), 0)) #speed
	pass
