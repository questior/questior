extends Button


# Called when the node enters the scene tree for the first time.

func _on_pressed() -> void:
	if get_parent().name != "q1":
		$"../../HBoxContainer/NewQuestion".questions.erase(get_parent().get_meta("arraynumber"))
		get_parent().get_parent().remove_child(get_parent())
		get_parent().queue_free()
