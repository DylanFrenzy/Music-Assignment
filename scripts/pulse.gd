extends Control

var spectrum_analyzer = AudioServer.get_bus_effect_instance(AudioServer.get_bus_index("Master"), 0)
var edgeThickness = 0
var color = Color(.99, .875, .35, 0.4)
var isPlaying = false

func _process(_delta):
	if isPlaying:
		var spectrum = spectrum_analyzer.get_magnitude_for_frequency_range(1, 400)
		edgeThickness = spectrum.length() * 1000
	else:
		edgeThickness = 0
		
	queue_redraw()
	
func _draw():
	draw_line(Vector2(0, 0), Vector2(size.x, 0), color, edgeThickness)
	draw_line(Vector2(0, 0), Vector2(0, size.y), color, edgeThickness)
	draw_line(Vector2(size.x, 0), Vector2(size.x, size.y), color, edgeThickness)
	draw_line(Vector2(0, size.y), Vector2(size.x, size.y), color, edgeThickness)
