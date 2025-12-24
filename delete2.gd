extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
func _on_pressed() -> void:
	if get_parent().name != "a1":
		$"../../HBoxContainer/NewResult".results.erase(get_parent().get_meta("arraynumber2"))
		get_parent().get_parent().remove_child(get_parent())
		get_parent().queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
