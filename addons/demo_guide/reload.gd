@tool
extends EditorScript

# Called when the script is executed (using File -> Run in Script Editor).
func _run():
	var plugin_name : String = "demo_guide"
	EditorInterface.set_plugin_enabled(plugin_name, false)
	EditorInterface.set_plugin_enabled(plugin_name, true)
	print("Reloaded plugin " + plugin_name)
	pass
