
board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8) == true
    true
  else position_taken?(board, index) == true
    false
  end
end


user_input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, user_input, char="X")
  board[user_input] = char
end