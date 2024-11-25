extends Node2D


func _on_button_button_down() -> void:
	if $AudioStreamPlayer2D.playing:
		$Button.text = "Play"
		$AudioStreamPlayer2D.stop()
		
	else:
		$Button.text = "Stop"
		$AudioStreamPlayer2D.play()	
	pass # Replace with function body.
	
func _on_h_slider_value_changed(value: float) -> void:
	$AudioStreamPlayer2D.pitch_scale = value
	pass
	
func _on_button_2_button_down() -> void:
	if $AudioStreamPlayer2D2.playing:
		$Button2.text = "Play"
		$AudioStreamPlayer2D2.stop()
		
	else:
		$Button2.text = "Stop"
		$AudioStreamPlayer2D2.play()	
		pass # Replace with function body.
	
func _on_h_slider2_value_changed(value: float) -> void:
	$AudioStreamPlayer2D.pitch_scale = value
	pass




func _on_h_slider_2_value_changed(value: float) -> void:
	pass # Replace with function body.
