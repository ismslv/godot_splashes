extends Node3D

@export var model2: RigidBody3D
@export var labels: Control
@export var labelsAnimator: AnimationPlayer

func _ready():
	labels.hide()
	await get_tree().create_timer(1.0).timeout
	labels.show()
	await get_tree().create_timer(1.0).timeout
	model2.freeze = false
	await get_tree().create_timer(1.5).timeout
	labelsAnimator.play("labels_animation")
