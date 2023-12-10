extends Node3D

@onready var anim: = $AnimationPlayer
@onready var audio: = $AudioStreamPlayer3D
@onready var refirecd: Timer = $RefireCD

func _input(event):
    if event.is_action_pressed("fire") and refirecd.is_stopped():
        fire()

func fire() -> void:
    anim.stop()
    anim.play("Revolve")
    audio.play()
    refirecd.start()
