require 'colorize'
require 'byebug'
require_relative 'cursor.rb'
require_relative 'board.rb'

class Display

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    debugger
    until @cursor.get_input == nil
      system("clear")
      @board.rows.each do |row|
        p row
      end
    end
  end

end
b = Board.new
d = Display.new(b)
d.render
