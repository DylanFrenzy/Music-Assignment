extends Node2D

func _on_button_button_down() -> void:
	if $AudioStreamPlayer2D.playing:
		$Button.text = "Play Song 3"
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
		$Button2.text = "Play Song 1"
		$AudioStreamPlayer2D2.stop()
		
	else:
		$Button2.text = "Stop"
		$AudioStreamPlayer2D2.play()	
		pass # Replace with function body.
	
func _on_h_slider_2_value_changed(value: float) -> void:
	$AudioStreamPlayer2D2.pitch_scale = value
	pass
	
func _on_button_3_button_down() -> void:
	if $AudioStreamPlayer2D3.playing:
		$Button3.text = "Play Song 2"
		$AudioStreamPlayer2D3.stop()
		
	else:
		$Button3.text = "Stop"
		$AudioStreamPlayer2D3.play()	
		pass # Replace with function body.
	
func _on_h_slider_3_value_changed(value: float) -> void:
	$AudioStreamPlayer2D3.pitch_scale = value
	pass


func _on_h_slider_4_value_changed(value: float) -> void:
	$AudioStreamPlayer2D3.volume_db = value
	pass # Replace with function body.
	
func _on_h_slider_5_value_changed(value: float) -> void:
	$AudioStreamPlayer2D2.volume_db = value
	pass # Replace with function body.
	
func _on_h_slider_6_value_changed(value: float) -> void:
	$AudioStreamPlayer2D.volume_db = value
	pass # Replace with function body.
	
func _on_button_4_button_down() -> void:
	if $AudioStreamPlayer2D4.playing:
		$Button4.text = "Play Song 2"
		$AudioStreamPlayer2D4.stop()
		
	else:
		$Button4.text = "Stop"
		$AudioStreamPlayer2D4.play()	
		pass # Replace with function body.
	
func _on_h_slider_7_value_changed(value: float) -> void:
	$AudioStreamPlayer2D4.pitch_scale = value
	pass


func _on_h_slider_8_value_changed(value: float) -> void:
	$AudioStreamPlayer2D4.volume_db = value
	pass # Replace with function body.
	
func _on_button_5_button_down() -> void:
	if $AudioStreamPlayer2D5.playing:
		$Button5.text = "Play Song 5"
		$AudioStreamPlayer2D5.stop()
		
	else:
		$Button5.text = "Stop"
		$AudioStreamPlayer2D5.play()	
		pass # Replace with function body.
	
func _on_h_slider_9_value_changed(value: float) -> void:
	$AudioStreamPlayer2D5.pitch_scale = value
	pass


func _on_h_slider_10_value_changed(value: float) -> void:
	$AudioStreamPlayer2D5.volume_db = value
	pass # Replace with function body.
	
	
func _on_button_6_button_down() -> void:
	if $AudioStreamPlayer2D6.playing:
		$Button6.text = "Play Song 6"
		$AudioStreamPlayer2D6.stop()
		
	else:
		$Button6.text = "Stop"
		$AudioStreamPlayer2D6.play()	
		pass # Replace with function body.
	
func _on_h_slider_11_value_changed(value: float) -> void:
	$AudioStreamPlayer2D6.pitch_scale = value
	pass


func _on_h_slider_12_value_changed(value: float) -> void:
	$AudioStreamPlayer2D6.volume_db = value
	pass # Replace with function body.
	



	
	
