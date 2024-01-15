extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var viewport_rect=get_viewport_rect()

	var enemy_scene = preload("res://enemyFlying.tscn")
	for i in range(4):
		var random_x = randf_range(viewport_rect.position.x, viewport_rect.size.x)
		var random_y = randf_range(viewport_rect.position.y, viewport_rect.size.y)
		var enemy_instance = enemy_scene.instantiate()
		var random_position = Vector2(random_x, random_y)
		enemy_instance.position = random_position
		add_child(enemy_instance)

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
