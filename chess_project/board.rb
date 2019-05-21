require 'byebug'
class Board
  attr_reader :rows

  def initialize
    @rows = Array.new(8) {Array.new(8)}
  end

  def move_piece(start_pos, end_pos)
    begin
      @rows[start_pos[0]][start_pos[1]] = NullPiece.new
      @rows[end_pos[0]][end_pos[1]] = nil #Piece.new
      raise StandardError if @rows[start_pos[0]][start_pos[1]] == nil #NullPiece.value##(nil)
    rescue => exception
      raise StandardError, "Position is empty...!"
    end
  end

  def valid_pos?(position)
    position.each do |pos|
      return false if pos > @rows.size || pos < 0
    end
    true
  end

end ###
