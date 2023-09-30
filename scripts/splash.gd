extends Node3D

@export var model2: RigidBody3D
@export var labels: Control
@export var labelsAnimator: AnimationPlayer
@export var timeoutFirst = 1.0
@export var timeoutSecond = 1.0

func _ready():
	labels.hide()
	await get_tree().create_timer(timeoutFirst).timeout
	labels.show()
	await get_tree().create_timer(timeoutSecond).timeout
	model2.freeze = false
	await get_tree().create_timer(timeoutSecond + 0.5).timeout
	labelsAnimator.play("labels_animation")
