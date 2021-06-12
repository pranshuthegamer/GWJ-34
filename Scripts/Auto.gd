extends Node

func _add_ui(ui_node):
	ui_node = load(ui_node)
	$"/root/Main/UI".add_child(ui_node.instance())
