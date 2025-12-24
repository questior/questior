extends Button

var results: Array = [1]
var childamount
@onready
var temp = $"../../a1"
var newchild
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	newchild = temp.duplicate()
	add_child(newchild)
	print(results)
	results.append(results.max()+1)
	print(results)
	get_child(0).get_child(4).disabled = false
	get_child(0).set_meta("arraynumber2", results.max())
	print(get_child(0).get_meta("arraynumber2"))
	get_child(0).reparent(get_parent().get_parent())
	get_parent().get_parent().move_child(get_parent(), get_parent().get_index()+1)
