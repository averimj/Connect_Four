require_relative "board"

class PlayerTurn

  def initialize(move)
    @move = move.upcase
    @move_index = nil
  end

  def store_move(grid)
    find_move_index(grid)

    if grid[6][@move_index] == "."
      grid[6][@move_index] = "X"
    end
  end


  def find_move_index(grid)
    grid[0].each_with_index do |letter, index|
      if letter == @move
        @move_index = index
      end
    end
  end





end
