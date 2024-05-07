extends KinematicBody2D

var score:int=0;
var speed:int=200;
var jumpforce:int=625;
var garv:int=1700;

var vel:Vector2=Vector2()
onready var runaldu: Sprite=get_node("ibra")
func _physics_process(delta):
	
	vel.x=0
	if Input.is_action_pressed("move_left2"):
		vel.x-=speed
	if Input.is_action_pressed("nove_right2"):
		vel.x+=speed
	
	vel=move_and_slide(vel, Vector2.UP)
	vel.y+=garv*delta
	if Input.is_action_just_pressed("jump2") and is_on_floor():
		vel.y-=jumpforce
		


  
