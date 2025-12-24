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
		get_parent().resultvars[int(get_parent().get_meta("arraynumber2"))] = self.text
		print(get_parent().resultvars)
	else:
		print(str($"../../a1".get_meta("arraynumber2")))
		$"../../a1".resultvars[int(get_parent().get_meta("arraynumber2"))] = self.text
		print($"../../a1".resultvars)
