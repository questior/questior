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
		get_parent().opt1[int(get_parent().get_meta("arraynumber"))] = get_line(0)
	else:
		print(str($"../../q1".get_meta("arraynumber")))
		$"../../q1".opt1[int(get_parent().get_meta("arraynumber"))] = get_line(0)
	if get_parent().name == "q1":
		print(str(get_parent().get_meta("arraynumber")))
		get_parent().opt2[int(get_parent().get_meta("arraynumber"))] = get_line(1)
	else:
		print(str($"../../q1".get_meta("arraynumber")))
		$"../../q1".opt2[int(get_parent().get_meta("arraynumber"))] = get_line(1)
	if get_parent().name == "q1":
		print(str(get_parent().get_meta("arraynumber")))
		get_parent().opt3[int(get_parent().get_meta("arraynumber"))] = get_line(2)
	else:
		print(str($"../../q1".get_meta("arraynumber")))
		$"../../q1".opt3[int(get_parent().get_meta("arraynumber"))] = get_line(2)
	if get_parent().name == "q1":
		print(str(get_parent().get_meta("arraynumber")))
		get_parent().opt4[int(get_parent().get_meta("arraynumber"))] = get_line(3)
	else:
		print(str($"../../q1".get_meta("arraynumber")))
		$"../../q1".opt4[int(get_parent().get_meta("arraynumber"))] = get_line(3)
	if get_parent().name == "q1":
		print(str(get_parent().get_meta("arraynumber")))
		get_parent().opt5[int(get_parent().get_meta("arraynumber"))] = get_line(4)
	else:
		print(str($"../../q1".get_meta("arraynumber")))
		$"../../q1".opt5[int(get_parent().get_meta("arraynumber"))] = get_line(4)
