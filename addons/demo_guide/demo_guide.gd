@tool
extends EditorPlugin

const MainPanel : PackedScene = preload("res://addons/demo_guide/Scenes/MainScene.tscn")

var main_panel_instance
var plugin_name: String = "Demo Guide"

func _enter_tree() -> void:
	# Initialization of the plugin goes here.
	main_panel_instance = MainPanel.instantiate()
	# Add the main panel to the editor's main viewport.
	get_editor_interface().get_editor_main_screen().add_child(main_panel_instance)
	# Hide the main panel. Very much required.
	_make_visible(false)


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	if main_panel_instance:
		main_panel_instance.queue_free()


# Determines whether this is a main screen panel that goes next to the main viewport change buttons
func _has_main_screen() -> bool:
	return true


# Main screen plugins need to be hidden by default
func _make_visible(visible) -> void:
	if main_panel_instance:
		main_panel_instance.visible = visible


# Customize the text displayed on the button
func _get_plugin_name() -> String:
	return plugin_name


# Customize the icon shown on the button
func _get_plugin_icon() -> Texture2D:
	return load("res://addons/demo_guide/Godot_icon.png") as Texture2D
