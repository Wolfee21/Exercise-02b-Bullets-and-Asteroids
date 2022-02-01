extends KinematicBody2D

var speed = 500
var damage = 1
var velocity = Vector2.ZERO
func _ready():
	velocity = Vector2(0,-speed)
	
func _physics_process(_delta):
	velocity = move_and_slide(velocity,Vector2.UP)
	



func _on_Area2D_body_entered(body):
	queue_free()



func _on_Timer2_timeout():
	queue_free()
