extends Node2D

@onready var viewport_rect=get_viewport_rect()

func addEnemy():
	var enemy_scene = preload("res://enemyFlying.tscn")
	var random_x = randf_range(viewport_rect.position.x, viewport_rect.size.x)
	var random_y = randf_range(viewport_rect.position.y, viewport_rect.size.y)
	var enemy_instance = enemy_scene.instantiate()
	var random_position = Vector2(random_x, random_y)
	#enemy_instance.position = random_position
	enemy_instance.position = $pathPerimiter.position
	add_child(enemy_instance)
	
func _on_timer_timeout():
	addEnemy()
