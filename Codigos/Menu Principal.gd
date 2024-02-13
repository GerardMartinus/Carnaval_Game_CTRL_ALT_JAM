class_name MainMenu
extends Control

#ONREADY
@onready var start_button = $MarginContainer/VBox/Start_Button as Button
@onready var options_button = $MarginContainer/VBox/Options_Button as Button
@onready var exit_button = $MarginContainer/VBox/Exit_Button as Button
@onready var credits = $MarginContainer/VBox/Creditos as Button
@onready var options_menu = $Options_menu as OptionsMenu
@onready var margin_container = $MarginContainer as MarginContainer



#EXPORT
@export var start_creditos = preload("res://Cenas/creditos.tscn") as PackedScene
@export var start_level = preload("res://Cenas/options_menu.tscn") as PackedScene
@export var options = preload("res://Cenas/options_menu.tscn") as PackedScene

#func _ready
func _ready():
	handle_connecting_signals()
	
	
#FUNC
func on_credits_pressed() -> void:
	get_tree().change_scene_to_packed(start_creditos)
	
func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)
	
func on_options_pressed() -> void:
	margin_container.visible = false
	options_menu.set_process(true)
	options_menu.visible = true
	
func on_exit_opitions_menu() -> void:
	margin_container.visible = true
	options_menu.visible = false
	

func on_exit_pressed() -> void:
	get_tree().quit()
	
	
#Handle
func handle_connecting_signals() -> void:
	start_button.button_down.connect(on_start_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	credits.button_down.connect(on_credits_pressed)
	options_button.button_down.connect(on_options_pressed)
	options_menu.exit_options_menu.connect(on_exit_opitions_menu)
	
