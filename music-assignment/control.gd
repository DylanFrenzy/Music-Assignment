extends Control # Ensure the node type matches the script attachment

# Variables
var spectrum_analyzer = AudioServer.get_bus_effect_instance(AudioServer.get_bus_index("MusicBus"), 0)
var edge_thickness = 10  # Default edge thickness
var max_thickness = 50  # Maximum thickness based on audio amplitude

# Process logic
func _process(delta):
	if spectrum_analyzer:
		# Get the spectrum size (number of frequency bands)
		var spectrum_size = spectrum_analyzer.get_spectrum_size()
		if spectrum_size > 0:
			# Retrieve magnitude data from the spectrum analyzer
			var spectrum_data = spectrum_analyzer.get_magnitude()
			var average_amplitude = 0.0

			# Compute the average amplitude
			for i in range(0, spectrum_size):
				average_amplitude += spectrum_data[i]
			average_amplitude /= spectrum_size
			
			# Scale the edge thickness based on the amplitude
			edge_thickness = lerp(10, max_thickness, clamp(average_amplitude * 10, 0, 1))

		# Update visuals
		update()

# Draw visuals
func _draw():
	# Draw pulsating edges around the screen
	draw_line(Vector2(0, 0), Vector2(size.x, 0), Color(1, 0, 0, 0.5), edge_thickness)  # Top edge
	draw_line(Vector2(0, 0), Vector2(0, size.y), Color(1, 0, 0, 0.5), edge_thickness)  # Left edge
	draw_line(Vector2(size.x, 0), Vector2(size.x, size.y), Color(1, 0, 0, 0.5), edge_thickness)  # Right edge
	draw_line(Vector2(0, size.y), Vector2(size.x, size.y), Color(1, 0, 0, 0.5), edge_thickness)  # Bottom edge
