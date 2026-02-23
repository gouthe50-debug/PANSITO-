extends Node

# Core Game Manager

var game_state = "menu"
var teams = []
var player_money = 0

func _ready():
    _initialize_game() # Initialize game settings

func _initialize_game():
    # Set up teams and initial money
    teams = ["Red", "Blue"]
    player_money = 100
    update_game_state("playing")

func update_game_state(state):
    game_state = state
    match game_state:
        "menu":
            _show_menu()
        "playing":
            _start_game()

func _show_menu():
    print("Showing menu...")

func _start_game():
    print("Game is starting...")

# Function to manage money transactions
func manage_money(amount):
    player_money += amount
    if player_money < 0:
        player_money = 0
    print("Current Money: " + str(player_money))