@tool
extends EditorPlugin
class_name PluginExamples

var plugin_name: String = "demo_guide"

func _enter_tree():
	# Initialization of the plugin goes here.
	pass


func _exit_tree():
	# Clean-up of the plugin goes here.
	pass


func _on_add_menu_button_pressed():
	print("Handling add menu button")
	add_tool_menu_item(plugin_name, func (): print("tool menu clicked!"))


func _on_remove_menu_button_pressed():
	print("Handling remove menu button")
	remove_tool_menu_item(plugin_name)
