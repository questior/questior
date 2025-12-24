extends Button

const SAVE_DIR = "user://saves/"
const SAVE_FILE_NAME = "newest_save.json"
var SECURITY_KEY = "e3279r43"
@onready var fd = $"../FileDialog"
# Called when the node enters the scene tree for the first time.

#	load_data(SAVE_DIR + SAVE_FILE_NAME)


func _on_file_dialog_file_selected(path: String) -> void:
	load_data(fd.current_path)

func load_data(path: String):
	if FileAccess.file_exists(path):
		var file = FileAccess.open_encrypted_with_pass(path, FileAccess.READ, SECURITY_KEY)
		if file == null:
			print(FileAccess.get_open_error())
			print("moi")
			return
		var content = file.get_as_text()
		file.close()
		
		var data = JSON.parse_string(content)
		
		$"../..".questions = data.data.questions
		$"../..".questionnames = data.data.question_names
		$"../..".questionvars = data.data.question_vars
		$"../..".opt1 = data.data.question_1
		$"../..".opt2 = data.data.question_2
		$"../..".opt3 = data.data.question_3
		$"../..".opt4 = data.data.question_4
		$"../..".opt5 = data.data.question_5
		
		$"..".visible = false
		$"../../Game".visible = true

		$"../..".initial()
		
	#		"questions":$"../../Control/ScrollContainer/TextBoxes/HBoxContainer/NewQuestion".questions,
	#		"question_names":$"../../Control/ScrollContainer/TextBoxes/q1".questionnames,
	#		"question_vars":$"../../Control/ScrollContainer/TextBoxes/q1".questionvars,
	#		"question_1":$"../../Control/ScrollContainer/TextBoxes/q1".opt1,
	#		"question_2":$"../../Control/ScrollContainer/TextBoxes/q1".opt2,
	#		"question_3":$"../../Control/ScrollContainer/TextBoxes/q1".opt3,
	#		"question_4":$"../../Control/ScrollContainer/TextBoxes/q1".opt4,
	#		"question_5":$"../../Control/ScrollContainer/TextBoxes/q1".opt5,
			
	#		"results":$"../../Misc/ScrollContainer/TextBoxes/HBoxContainer/NewResult".results,
	#		"result_names":$"../../Misc/ScrollContainer/TextBoxes/a1".resultnames,
	#		"result_vars":$"../../Misc/ScrollContainer/TextBoxes/a1".resultvars,
	#		"result_1":$"../../Misc/ScrollContainer/TextBoxes/a1".rng1,
	#		"result_2":$"../../Misc/ScrollContainer/TextBoxes/a1".rng2


func _on_pressed() -> void:
	fd.visible = true
	fd.current_dir = ".."
