require_relative "board"
require_relative "player_turn"
class ConnectFour

  def initialize
    @name = " "
    @board = Board.new
  end

  def print_board
    @board.grid.each do |single_line|
      puts single_line.join(" ")
    end
  end

  def welcome_message
    puts "Hi, I'm Averi. What's your name?"
    @name = gets.chomp
    puts "Hey #{@name}, lets play Connect Four."
    puts "The first player to get 4 pieces in a row wins."
    puts "You'll be the X's and I'll be the O's."
    puts "I'm really good at this game so I'll let you go first."
  end

  def computer_move
    puts "Now, it's the computers move"
    player_turn = PlayerTurn.new(move)
    player_turn.store_move(@board.grid)
    print_board
    human_move
  end

  def human_move
    puts "#{@name}, enter a letter between A - G"
    move = gets.chomp
    player_turn = PlayerTurn.new(move)
    player_turn.store_move(@board.grid)
    print_board
    computer_move
  end
end

  game = ConnectFour.new
  game.welcome_message
  game.print_board
  game.human_move
