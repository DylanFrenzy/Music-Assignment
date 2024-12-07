extends Control # Ensure the node type matches the script attachment

# Variables
var instance = AudioServer.get_bus_index("Master")
var spectrum_analyzer = AudioServer.get_bus_effect_instance(instance, 0)
var edge_thickness = 10  # Default edge thickness
var max_thickness = 50  # Maximum thickness based on audio amplitude
var isPlaying = false
var color = Color(.99, .875, .35, 0.4)

# Process logic
func _process(delta):
	if spectrum_analyzer is AudioEffectSpectrumAnalyzerInstance && isPlaying:
		var spectrum = spectrum_analyzer.get_magnitude_for_frequency_range(1, 400)
		edge_thickness = spectrum.x + spectrum.y * 2000
		queue_redraw()

# Draw visuals
func _draw():
	# Draw pulsating edges around the screen
	draw_line(Vector2(0, 0), Vector2(size.x, 0), color, edge_thickness)  # Top edge
	draw_line(Vector2(0, 0), Vector2(0, size.y), color, edge_thickness)  # Left edge
	draw_line(Vector2(size.x, 0), Vector2(size.x, size.y), color, edge_thickness)  # Right edge
	draw_line(Vector2(0, size.y), Vector2(size.x, size.y), color, edge_thickness)  # Bottom edge


func _on_button_button_down() -> void:
	isPlaying = true # Replace with function body.


func _on_button_4_button_down() -> void:
	isPlaying = true # Replace with function body.
