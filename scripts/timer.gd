extends Timer

@export_file("*.tscn") var scene

func _ready():
	timeout.connect(on_timeout)
	start()


func on_timeout():
	get_tree().change_scene_to_file(scene)
