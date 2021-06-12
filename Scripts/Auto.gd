extends Node

func _enter_tree():
	_add_ui("res://Scenes/UI/Main_Menu.tscn")


onready var Main = $"/root/Main"

func _add_ui(ui_node):
	ui_node = load(ui_node)
	$"/root/Main/UI".add_child(ui_node.instance())

#Called to add Child to Main Node
#Expects at least 1 arguement, second one is called if you want a node to be queue freed
func _change_scene(SceneToAdd,ToQueueFree = null):
	SceneToAdd = load(SceneToAdd)
	if ToQueueFree == null:
		Main.add_child(SceneToAdd.instance())
	else:
		Main.add_child(SceneToAdd.instance())
		ToQueueFree.queue_free()
