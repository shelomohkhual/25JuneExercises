# require 'byebug'
# require 'colorize'
# class Sudoku
#   attr_accessor :board_string,:grids,:rows,:cols,:boxes
#     def initialize(board_string)
#       @grids=board_string.split('')
#       @nums=(1..9).to_a
#       @rows=[]
#       @cols=[]
#       @boxes={}

#       count = 0
#       # creating rows
#       9.times do |index|
#         # a_i=("A".."I").to_a
#         # name=a_i[index].to_s
#         temp_arr= []
#         9.times do |num|
#           temp_arr << @grids[count]
#           count += 1
#         end
#         @rows << temp_arr
#       end

#       # creating cols
#       9.times do |index|
#         temp_arr=[]
#         9.times do |num|
#           temp_arr << @rows[num][index] #A1
#         end
#         @cols << temp_arr
#       end

#       count=1
#       3.times do
#         row_index= 0
#         col_index = 0
#         3.times do ||
#           @boxes[count.to_s]=[@rows[row_index][col_index,3],@rows[row_index+1][col_index,3],@rows[row_index+2][col_index,3]].flatten
#           col_index += 3
#           count+=1
#         end
#         row_index += 3
#       end

#     #  check possiblities 
#     @rows.each_with_index do |row,row_index|
#       row.each_with_index do |ele,ele_index|
#         if ele=="-"
#           ele=@nums-(row+@cols[ele_index])
#         else
#           ele=ele
#       end
#     end
#       # @grids.each do |ele|
#       #   if ele == "-"
#       #     ele = nil
#       #   else ele=ele.to_i
#       #   end
#       # end
#           # p nine_boxes
#       # count = 1
#       # @nine_boxes.each do |box|
#       #   p "box#{count}:#{box}"
#       #   count += 1
#       # end

#     end
  
    
#     def solve
#     end
  
#     def finished?
#     end
  
#     def board
#     end
  
#     def to_s
#       @grids.each_slice(9) do |row|
#         row.each do |ele|
#           print "|"
#           if ele=="-" || ele.length > 1
#             print " #{ele} ".red
#           else
#           print " #{ele} ".white
#           end
#         end
#         print "|"
#         puts
#       end
#       p @rows.flatten.length
#     end
# end





