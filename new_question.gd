extends Button
var questions: Array = [1]
var childamount
@onready
var temp = $"../../q1"
var newchild

func _on_pressed() -> void:
	newchild = temp.duplicate()
	add_child(newchild)
	print(questions)
	questions.append(questions.max()+1)
	print(questions)
	get_child(0).get_child(4).disabled = false
	get_child(0).set_meta("arraynumber", questions.max())
	print(get_child(0).get_meta("arraynumber"))
	get_child(0).reparent(get_parent().get_parent())
	get_parent().get_parent().move_child(get_parent(), get_parent().get_index()+1)
