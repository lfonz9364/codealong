class Board
  SIZE = 7
  COLUMN_SEPARATOR = " "
  ROW_SEPARATOR = "\n"

  def render
    (0..SIZE).map do |row|
      (0..SIZE).map do |col|
        yield row,col
      end.join(COLUMN_SEPARATOR)
    end.join(ROW_SEPARATOR)
  end

end

class Queens

  DEFAULT_POSITIONS = {
    white: [0, 3],
    black: [7, 3]
  }

  attr_reader :white, :black

  def initialize(positions = {})
    start_positions = DEFAULT_POSITIONS.merge(positions)
    @white = start_positions[:white]
    @black = start_positions[:black]
    raise ArgumentError, 'Cannot occupy the same space' if @black == @white
  end

  def to_s
    Board.new.render do |row, col|
      render_board_item(row, col)
    end
  end

  BOARD_ITEM_WHITE = "W"
  BOARD_ITEM_BLACK = "B"
  BOARD_ITEM_EMPTY = "O"

  def render_board_item(row, col)
   case [row, col]
     when @white then BOARD_ITEM_WHITE
     when @black then BOARD_ITEM_BLACK
                 else BOARD_ITEM_EMPTY
     end
  end

  def attack?
    same_row? || same_column? || diagonal?
  end

  def same_row?
    @white[0] == @black[0]
  end

  def same_column?
    @white[1] == @black[1]
  end

  def diagonal?
    diagonal_row = (@white[0] - @black[0]).abs
    diagonal_column = (@white[1] - @black[1]).abs
    diagonal_row == diagonal_column
  end

end
