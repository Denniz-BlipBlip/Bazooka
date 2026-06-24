extends Area2D

@onready var manager=%GameManager
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	manager.scoreCounter()
	animation_player.play("pickUpAnimation")
