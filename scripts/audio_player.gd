extends Node2D

var trackScene = preload("res://scenes/track.tscn")
var musicFiles = []
var trackSceneInstances = []
	
func _ready():
	get_music_files()
	for i in range(musicFiles.size()):
		var xPos = (i % 3  * 310) + 100
		var yPos = 80 if i < 3 else 390
		
		var trackSceneInstance = trackScene.instantiate()
		
		var pausePlayButton = trackSceneInstance.get_node("PausePlay")
		pausePlayButton.pausedText = "Play song {num}".format({"num": i + 1})
		pausePlayButton.pressed.connect(_on_button_pressed.bind(i))
		
		var audio = load("res://assets/music/" + musicFiles[i])
		if audio: trackSceneInstance.audio = audio
		
		trackSceneInstance.position = Vector2(xPos, yPos)
		trackSceneInstances.append(trackSceneInstance)
		add_child(trackSceneInstance)
		

func get_music_files():
	var dir = DirAccess.open("res://assets/music")
	if dir:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if !file_name.ends_with(".import"):
				musicFiles.append(file_name)
			file_name = dir.get_next()

func _on_button_pressed(i):
	var selectedTrack = trackSceneInstances[i]
	$Pulse.isPlaying = false
	
	for track in trackSceneInstances:
		if track.playing:
			var pausePlayButton = track.get_node("PausePlay")
			track.stop()
			track.playing = false
			pausePlayButton.text = pausePlayButton.pausedText
		elif track == selectedTrack:
			var pausePlayButton = track.get_node("PausePlay")
			track.play()
			pausePlayButton.text = "Stop"
			$Pulse.isPlaying = true
			
			
	

	
