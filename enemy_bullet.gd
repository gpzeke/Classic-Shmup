extends Area2D

@export var speed = 150

func start(pos):
	position = pos


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	position.y += speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.name == "player":
		queue_free()


func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	queue_free()
