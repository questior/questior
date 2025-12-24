extends TextEdit


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_text_changed() -> void:
	if get_parent().name == "a1":
		print(str(get_parent().get_meta("arraynumber2")))
		get_parent().rng1[int(get_parent().get_meta("arraynumber2"))] = get_line(0)
	else:
		print(str($"../../a1".get_meta("arraynumber2")))
		$"../../a1".rng1[int(get_parent().get_meta("arraynumber2"))] = get_line(0)
	if get_parent().name == "a1":
		print(str(get_parent().get_meta("arraynumber2")))
		get_parent().rng2[int(get_parent().get_meta("arraynumber2"))] = get_line(1)
	else:
		print(str($"../../a1".get_meta("arraynumber2")))
		$"../../a1".rng2[int(get_parent().get_meta("arraynumber2"))] = get_line(1)
