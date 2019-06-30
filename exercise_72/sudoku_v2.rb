# require 'awesome_print'
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
    num=(1..9).to_a
    @empty_space=[]
    @board_string=board_string
    @possibe_num=[]
    @rows=[]
    @cols=[]
    @boxes=[]

    @board_string.split("").each_slice(9) do |elements|
      @rows<< elements #getting rows
    end  
    
  9.times do |n| #getting the cols
      temp_row=[]
      @rows.each do |row|
        temp_row<<row[n]
      end
      @cols<<temp_row
  end

  3.times do #getting the boxes
    
end


  def each_possibe_num
    # @possibe_num=[]
    # @rows.
    
    # boxs
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
    
    
  end
  
end

can each possibe_num if num is one, mark it


@grids.each do |element|
  if element 