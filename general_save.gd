extends Button

const SAVE_DIR = "user://saves/"
const SAVE_FILE_NAME = "newest_save.json"
var SECURITY_KEY = "e3279r43"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.



func save_data(path: String):
	var file = FileAccess.open_encrypted_with_pass(path, FileAccess.WRITE, SECURITY_KEY) 

	var savedata = {
		"data":{
			"questions":$"../../Control/ScrollContainer/TextBoxes/HBoxContainer/NewQuestion".questions,
			"question_names":$"../../Control/ScrollContainer/TextBoxes/q1".questionnames,
			"question_vars":$"../../Control/ScrollContainer/TextBoxes/q1".questionvars,
			"question_1":$"../../Control/ScrollContainer/TextBoxes/q1".opt1,
			"question_2":$"../../Control/ScrollContainer/TextBoxes/q1".opt2,
			"question_3":$"../../Control/ScrollContainer/TextBoxes/q1".opt3,
			"question_4":$"../../Control/ScrollContainer/TextBoxes/q1".opt4,
			"question_5":$"../../Control/ScrollContainer/TextBoxes/q1".opt5,
			
			"results":$"../../Misc/ScrollContainer/TextBoxes/HBoxContainer/NewResult".results,
			"result_names":$"../../Misc/ScrollContainer/TextBoxes/a1".resultnames,
			"result_vars":$"../../Misc/ScrollContainer/TextBoxes/a1".resultvars,
			"result_1":$"../../Misc/ScrollContainer/TextBoxes/a1".rng1,
			"result_2":$"../../Misc/ScrollContainer/TextBoxes/a1".rng2
		}
	}
	
	var json_string = JSON.stringify(savedata, "\t")
	print(savedata)
	print($"../../Control/ScrollContainer/TextBoxes/q1".questionnames)
	file.store_string(json_string)
	file.close()

# Called every frame. 'delta' is the elapsed time since the previous frame.


func _on_pressed() -> void:
	save_data(SAVE_DIR + SAVE_FILE_NAME)
