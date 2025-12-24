extends TextEdit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_text_changed() -> void:
	if get_parent().name == "q1":
		print(str(get_parent().get_meta("arraynumber")))
		get_parent().questionnames[int(get_parent().get_meta("arraynumber"))] = self.text
		print(get_parent().questionnames)
	else:
		print(str($"../../q1".get_meta("arraynumber")))
		$"../../q1".questionnames[int(get_parent().get_meta("arraynumber"))] = self.text
		print($"../../q1".questionnames)
