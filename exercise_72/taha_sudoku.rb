require 'byebug'
require 'colorize'

class Sudoku
  attr_accessor :board_array, :rows, :columns, :boxes
# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
  def initialize(board_string)
    # @board_hash = Hash.new {|hash, key| @board_hash[key] = []}
    # board_array = board_string.split("")
    # 9.times do |y|
    #     9.times do |x|
    #         @board_hash[y+1] << board_array.shift
    #     end
    # end
    # @rows = @board_hash
    # # p @rows
    # @column = Hash.new {|hash, key| @column[key] = []}
    #     9.times do |w|
    #         @board_hash.values.each do |row|
    #             @column[w+1] << row[w]
    #         end
    # end
    # @boxes = Hash.new {|hash, key| @boxes[key] = []}
    #     @rows.each_with_index do |(a, v), row_index|
    #         @column.each_with_index do |(b, v2), column_index|
    #             if row_index < 3
    #                 @boxes[(column_index / 3) + 1] << v[b-1]
    #             elsif row_index < 6
    #                 @boxes[((column_index / 3) + 3) + 1] << v[b-1]
    #             elsif row_index >= 6
    #                 @boxes[((column_index / 3) + 6) + 1] << v[b-1]
    #             end
    #         end
    #     end
    #     @empty_cells = []
    #     @rows.each do |row_key_num, row_value|
    #         @column.each do |column_key_num, column_value|
        @board_array = Array.new
                # i = 0
                # while i < 81
                #     @board_array << board_string[i..(i + 8)].split('')
                #     i += 9
                # end
                board_string.split("").each_slice(9) do |elements|
                @board_array<< elements
              end
        @rows = @board_array.map do |x|
          x.map do |y|
            if y == "-"
              y = 0
            else y = y.to_i
            end
          # byebug
          end
        end
    #     @columns = Array.new
    #         9.times do |x|
    #             temp_arr=[]
    #             @rows.each do |row|
    #               temp_arr<<row[x]
    #             end
    #             @columns<<temp_arr
    #          end
    # @boxes = Array.new
    #         3.times do
    #         temp_box_1=[]
    #         temp_box_2=[]
    #         temp_box_3=[]
    #         3.times do |row|
    #             temp_box_1<<@rows[row][0,3]
    #             temp_box_2<<@rows[row+3][3,3]
    #             temp_box_3<<@rows[row+6][6,3]
    #         end
    #         @boxes.push(temp_box_1,temp_box_2,temp_box_3)
    #         end
    # @boxes = @boxes.map do |box|
    #         box.flatten
    # end
end
# the main part to solve the problem
  def solve
    change = true
    
    while change == true
      change = false
        posibilities = Array.new
        for x in (0..8) do
          for y in (0..8) do
            # byebug
            posibilities = get_possible_numbers(x,y)
              if posibilities == false
              skip
                if posibilities.length == 1
                  # byebug
                  @rows[x][y].pop
                  @rows[x][y] = posibilities[0]
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
    if @rows[x][y] != 0
      return false
    else
      for digit in @rows[x] do 
        # if digit.integer?
          repeated = digit
        # end
        numbers.delete(repeated)
      end
      for col_digit in (0..8) do
        # byebug
        if numbers.include?(@rows[col_digit][y])
           numbers.delete(@rows[col_digit][y])
          # byebug
        else nil
        end
      end
    end
    row_start = (x/3)*3
    col_start = (y/3)*3
    small_board = @rows[row_start..(row_start+3)]
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

  # Returns a boolean indicating whether or not the provided board is solved.
  def finished?
    
  end

  def board
    puts "*" * 37
    @rows.each do |array|
        array.each do |ele|
          if ele == 0
            print "| #{ele} ".black
          else
            print "| #{ele} "
          end
        end
        print "|"
        puts
    end 
    puts "*" * 37
  end
#   def test_ini
#       print @column
#   end

  # Returns a string representing the current state of the board, well formatted for output to the screen. No `puts` here!
  def to_s
  end
end