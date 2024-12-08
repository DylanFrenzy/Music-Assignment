extends AudioStreamPlayer2D

var audio = null

func _ready():
	stream = audio

func _on_speed_slider_value_changed(value):
	pitch_scale = value

func _on_volume_slider_value_changed(value):
	volume_db = value
