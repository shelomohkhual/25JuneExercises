require 'byebug'
​
class Sudoku
  attr_reader :board_array, :rows, :columns, :boxes
  def initialize(board_string)
        @board_array = Array.new
               
                board_string.split("").each_slice(9) do |elements|
                @board_array<< elements
              end
        @rows = @board_array
  
end
# the main part to solve the problem
  def solve
    change = true
    while change == true
      change = false
        posibilities = Array.new
        for x in (0..8) do
          for y in (0..8) do
            posibilities = get_possible_numbers(x,y)
              if posibilities == false
              next
                if posibilities.length == 1
                  self.rows[x][y] = posibilities[0]
                  change = true
                end
              end
          end
        end
        if change == false
          return
        end
    end
  end
#  get all the possible numbers for an empty position
  def get_possible_numbers(x,y)
    numbers = (1..9).to_a
    numbers = numbers.map do |number|
      number = number.to_s
    end
    
    if self.rows[x][y] != "-"
      return false
      for digit in self.rows[x] do 
        if digit.integer?
          repeated = digit
        end
        numbers = number.delete(repeated)
      end
      for col_digit in (1..9) do
        if (self.rows[col_digit][y]).integer?
          numbers = number.delete(self.rows[col_digit][y])
        end
      end
    end
    row_start = (x/3)*3
    col_start = (y/3)*3
    small_board = self.rows[row_start..(row_start+3)]
    small_board.each_with_index do |row, index|
      small_board[index] = row[col_start..(col_start+3)]
    end
    small_board.each do |row|
      row.each do |col|
        numbers.delete(col)
      end
    end
    return numbers
  end
​
  # Returns a boolean indicating whether or not the provided board is solved.
  def finished?
    
  end
​
  def board
    puts "*" * 37
    @board_array.each do |array|
        array.each do |ele|
            print "| #{ele} "
        end
        print "|"
        puts
    end 
    puts "*" * 37
  end
  def to_s
  end
end