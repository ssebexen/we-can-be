extends Node2D

var story_screen = load("res://scenes/story_screen/story_screen.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Player/Hurtbox.player_hit.connect(_on_player_hurtbox_player_hit)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_player_hurtbox_player_hit():
	get_tree().change_scene_to_packed(story_screen)
