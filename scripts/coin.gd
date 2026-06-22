extends Area2D

static var count=0

func counter()->int:
	count+=1
	return count

func _on_body_entered(body: Node2D) -> void:
	print(counter())
	queue_free()
