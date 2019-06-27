require 'awesome_print'
require 'byebug'
require 'colorize'
class Sudoku
# Takes a board as a string in the format
# you see in the puzzle file. Returns
# something representing a board after
# your solver has tried to solve it.
# How you represent your board is up to you!
attr_accessor :rows,:cols,:boxes, :board_string,:possibe_num
  def initialize(board_string)
    num=(1..9)to_a
    @empty_space=[]
    @board_string=board_string
    @possibe_num=[]
    @rows=[]
    @cols=[]
    @boxes=[]
    @board_string.split("").each_slice(9) do |elements|
      @rows<< elements
    end  
    
  9.times do |n|
      temp_row=[]
      @rows.each do |row|
        temp_row<<row[n]
      end
      @cols<<temp_row
  end

  3.times do
    temp_box_1=[]
    temp_box_2=[]
    temp_box_3=[]
    3.times do |row|
      temp_box_1<<rows[row][0,3]
      temp_box_2<<rows[row+3][3,3]
      temp_box_3<<rows[row+6][6,3]
    end
    @boxes.push temp_box_1.flatten,temp_box_2.flatten,temp_box_3.flatten
  end
end


  def possibe_num
    # @row.split("").each do |ele|
    #   if ele == "-"
    #     <<
    # end
    @rows.includes
  end
    
  def solve

  end

  # Returns a boolean indicating whether or not the provided board is solved.
  def finished?

  end

  def board
    # return current state
  end

  # Returns a string representing the current state of the board, well formatted for output to the screen. No `puts` here!
  def to_s
    @rows.each do |row|
      row.each do |ele|
        print "|"
        if ele=="-"
          print " #{ele} ".red
        else
        print " #{ele} "
        end
      end
      print "|"
      puts
    end
  end
end

