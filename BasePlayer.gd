extends Control

var questions: Array = [1]
var questionnames: Dictionary = {}
var questionvars: Dictionary = {}
var opt1: Dictionary = {}
var opt2: Dictionary = {}
var opt3: Dictionary = {}
var opt4: Dictionary = {}
var opt5: Dictionary = {}
var currentanswers: Dictionary = {}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func initial():
	currentanswers[questionvars[str(int(questions[0]))]] = 0.0
	start()

func start():
	questions.shuffle()
	$Game/RichTextLabel.text = questionnames[str(int(questions[0]))]

func _on_agree_pressed() -> void:
	if questions != []:
		currentanswers[questionvars[str(int(questions[0]))]] += float(opt1[str(int(questions[0]))])
		questions.remove_at(0)
		if questions != []:
			start()
		else:
			print("Over")
			print(currentanswers)
	else:
		print("Over")
		print(currentanswers)


func _on_sagree_pressed() -> void:
	if questions != []:
		currentanswers[questionvars[str(int(questions[0]))]] += float(opt2[str(int(questions[0]))])
		questions.remove_at(0)
		if questions != []:
			start()
		else:
			print("Over")
			print(currentanswers)
	else:
		print("Over")
		print(currentanswers)

func _on_neutral_pressed() -> void:
	if questions != []:
		currentanswers[questionvars[str(int(questions[0]))]] += float(opt3[str(int(questions[0]))])
		questions.remove_at(0)
		if questions != []:
			start()
		else:
			print("Over")
			print(currentanswers)
	else:
		print("Over")
		print(currentanswers)

func _on_sdisagree_pressed() -> void:
	if questions != []:
		currentanswers[questionvars[str(int(questions[0]))]] += float(opt4[str(int(questions[0]))])
		questions.remove_at(0)
		if questions != []:
			start()
		else:
			print("Over")
			print(currentanswers)
	else:
		print("Over")
		print(currentanswers)

func _on_disagree_pressed() -> void:
	if questions != []:
		currentanswers[questionvars[str(int(questions[0]))]] += float(opt5[str(int(questions[0]))])
		questions.remove_at(0)
		if questions != []:
			start()
		else:
			print("Over")
			print(currentanswers)
	else:
		print("Over")
		print(currentanswers)
