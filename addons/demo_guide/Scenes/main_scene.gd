@tool
extends Control

var examples : PluginExamples

func _ready():
	examples = PluginExamples.new()
	%AddMenuButton.pressed.connect(Callable(examples, "_on_add_menu_button_pressed"))
	%RemoveMenuButton.pressed.connect(Callable(examples, "_on_remove_menu_button_pressed"))
