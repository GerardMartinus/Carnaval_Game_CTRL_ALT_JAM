class_name creditos
extends Control


func _ready() -> void:
	for button in get_tree().get_nodes_in_group("creditos"):
		button.connect("pressed", func():
			
			match button.name:
				"Bruno":
					var _open_link: bool = OS.shell_open("https://gerardmartinus.itch.io")
				"Felipe":
					var _open_link: bool = OS.shell_open("https://gerardmartinus.itch.io")
				"Gabriel":
					var _open_link: bool = OS.shell_open("https://gerardmartinus.itch.io")
				"Jhow":
					var _open_link: bool = OS.shell_open("https://www.linkedin.com/in/jhonatan-evaristo-de-souza-a07738160")
				"Joao":
					var _open_link: bool = OS.shell_open("https://gerardmartinus.itch.io")
				"Layon":
					var _open_link: bool = OS.shell_open("https://powerwave-game-studio.itch.io")
				"Will":
					var _open_link: bool = OS.shell_open("https://gerardmartinus.itch.io")
				"Volta":
					var _game: bool = get_tree().change_scene("res://Cenas/menu_principal.tscn")
	)
