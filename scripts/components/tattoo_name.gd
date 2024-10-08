class_name TattooNameFrame extends Sprite2D

var adjectives1: Array[String] = [
	"small",
	"big",
	"buff",
	"long",
	"short",
	"giant",
	"typical",
	"simple",
	"fancy"
]

var adjectives2: Array[String] = [
	"ferocious",
	"brutal",
	"stinky",
	"sexy",
	"awesome",
	"shy",
	"annoying",
	"cute",
	"boring",
	"weird",
	"burning",
	"smoking",
	"fluffy",
	"vegan"
]

var nouns: Array[String] = [
	"frog",
	"orc",
	"elf",
	"sword",
	"axe",
	"skull",
	"fox",
	"cat",
	"elephant",
	"goblin",
	"mace",
	"star",
	"dog",
	"cyclops",
	"human",
	"dragon",
	"rabbit",
	"horse",
	"ninja",
	"koala",
	"bobcat",
	"banana",
	"hydra",
	"face"
]

func _ready() -> void:
	reload_theme()

func reload_theme() -> void:
	$Label.text = "%s  %s  %s" % [adjectives1.pick_random(), adjectives2.pick_random(), nouns.pick_random()]

func get_current_theme() -> String:
	return $Label.text
