extends Node2D

@export var maximum_pain: float = 50.0
@export var ease_rate: float = 10.0
@export var pain_curve: Curve

signal on_pain_exceeded

var added_pain: float = 0.0

func _process(delta: float) -> void:
	if added_pain > 0:
		$Bar.value += added_pain * delta
	else:
		$Bar.value -= ease_rate * delta
		
	added_pain = 0.0

func _on_character_move(velocity: Vector2, max_velocity: float) -> void:
	if velocity.length() > 0:
		var normalized_velocity = velocity.length() / max_velocity
		var pain_value = pain_curve.sample(normalized_velocity)

		added_pain = pain_value * maximum_pain
		if $Bar.value >= $Bar.max_value:
			set_process(false)
			on_pain_exceeded.emit()
