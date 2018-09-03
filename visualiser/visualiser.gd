extends Control

func _ready():
	AudioServer.set_bus_layout(load("res://new_bus_layout.tres"))

func _process(delta):
	var bus
	bus = AudioServer.get_bus_index("1")
	$center/hbox/v1.value = (AudioServer.get_bus_peak_volume_left_db(bus,0) + AudioServer.get_bus_peak_volume_right_db(bus,0)) / 2 
	bus = AudioServer.get_bus_index("2")
	$center/hbox/v2.value = (AudioServer.get_bus_peak_volume_left_db(bus,0) + AudioServer.get_bus_peak_volume_right_db(bus,0)) / 2
	bus = AudioServer.get_bus_index("3")
	$center/hbox/v3.value = (AudioServer.get_bus_peak_volume_left_db(bus,0) + AudioServer.get_bus_peak_volume_right_db(bus,0)) / 2
	bus = AudioServer.get_bus_index("4")
	$center/hbox/v4.value = (AudioServer.get_bus_peak_volume_left_db(bus,0) + AudioServer.get_bus_peak_volume_right_db(bus,0)) / 2
	bus = AudioServer.get_bus_index("5")
	$center/hbox/v5.value = (AudioServer.get_bus_peak_volume_left_db(bus,0) + AudioServer.get_bus_peak_volume_right_db(bus,0)) / 2
	bus = AudioServer.get_bus_index("6")
	$center/hbox/v6.value = (AudioServer.get_bus_peak_volume_left_db(bus,0) + AudioServer.get_bus_peak_volume_right_db(bus,0))/ 2
 