# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [3,6,0],
  [7,4,1],
  [8,5,2],
  [0,4,8],
  [6,4,2]
  
  ]
TOP_ROW_WIN = WIN_COMBINATIONS[0]
MIDDLE_ROW_WIN = WIN_COMBINATIONS[1]
BOTTOM_ROW_WIN = WIN_COMBINATIONS[2]
LEFT_COLUMN_WIN = WIN_COMBINATIONS[3]
MIDDLE_COLUMN_WIN = WIN_COMBINATIONS[4]
RIGHT_COLUMN_WIN = WIN_COMBINATIONS[5]
LEFT_DIAGONAL_WIN = WIN_COMBINATIONS[6]
RIGHT_DIAGONAL_WIN = WIN_COMBINATIONS[7]


  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0]
    
    win_index_2 = win_combination[1]
    
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    
    position_2 = board[win_index_2]
    
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      

      return win_combination
      
      
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"

      return win_combination
      
      
    else
      false
      
    end
  end
  
  if board.all? do |space|
    space == " " or space == "" or space == nil or space == false
    
    return false
    
  end
end
    
    
end

def full?(board)
  

  
# board.any? do |space|
#     if space == " " or space == "" or space == nil or space == false
#       return false
#     end
#  end
    
 
  
  board.all? do |space|
    space == "X" or space == "O"

  end
  
  # if draw?(board)
  #   return true
  # end

end

def draw?(board)

  if won?(board)
    false

  elsif won?(board) && full?(board)
    false

    
  else
    return true
  end
end
  
def over?(board)
  
  full?(board) || won?(board)
    
end

def winner(board)
  if board[TOP_ROW_WIN[0]] == "X" && board[TOP_ROW_WIN[1]] == "X" && board[TOP_ROW_WIN[2]] == "X"
    "X"
  elsif board[MIDDLE_ROW_WIN[0]] == "X" && board[MIDDLE_ROW_WIN[1]] == "X" && board[MIDDLE_ROW_WIN[2]] == "X"
    "X"
  elsif board[BOTTOM_ROW_WIN[0]] == "X" && board[BOTTOM_ROW_WIN[1]] == "X" && board[BOTTOM_ROW_WIN[2]] == "X"
    "X"
  elsif board[LEFT_COLUMN_WIN[0]] == "X" && board[LEFT_COLUMN_WIN[1]] == "X" && board[LEFT_COLUMN_WIN[2]] == "X"
    "X"
  elsif board[MIDDLE_COLUMN_WIN[0]] == "X" && board[MIDDLE_COLUMN_WIN[1]] == "X" && board[MIDDLE_COLUMN_WIN[2]] == "X"
    "X"
  elsif board[RIGHT_COLUMN_WIN[0]] == "X" && board[RIGHT_COLUMN_WIN[1]] == "X" && board[RIGHT_COLUMN_WIN[2]] == "X"
    "X"
  elsif board[LEFT_DIAGONAL_WIN[0]] == "X" && board[LEFT_DIAGONAL_WIN[1]] == "X" && board[LEFT_DIAGONAL_WIN[2]] == "X"
    "X"
  elsif board[RIGHT_DIAGONAL_WIN[0]] == "X" && board[RIGHT_DIAGONAL_WIN[1]] == "X" && board[RIGHT_DIAGONAL_WIN[2]] == "X"
    "X"
  elsif board[TOP_ROW_WIN[0]] == "O" && board[TOP_ROW_WIN[1]] == "O" && board[TOP_ROW_WIN[2]] == "O"
    "O"
  elsif board[MIDDLE_ROW_WIN[0]] == "O" && board[MIDDLE_ROW_WIN[1]] == "O" && board[MIDDLE_ROW_WIN[2]] == "O"
    "O"
  elsif board[BOTTOM_ROW_WIN[0]] == "O" && board[BOTTOM_ROW_WIN[1]] == "O" && board[BOTTOM_ROW_WIN[2]] == "O"
    "O"
  elsif board[LEFT_COLUMN_WIN[0]] == "O" && board[LEFT_COLUMN_WIN[1]] == "O" && board[LEFT_COLUMN_WIN[2]] == "O"
    "O"
  elsif board[MIDDLE_COLUMN_WIN[0]] == "O" && board[MIDDLE_COLUMN_WIN[1]] == "O" && board[MIDDLE_COLUMN_WIN[2]] == "O"
    "O"
  elsif board[RIGHT_COLUMN_WIN[0]] == "O" && board[RIGHT_COLUMN_WIN[1]] == "O" && board[RIGHT_COLUMN_WIN[2]] == "O"
    "O"
  elsif board[LEFT_DIAGONAL_WIN[0]] == "O" && board[LEFT_DIAGONAL_WIN[1]] == "O" && board[LEFT_DIAGONAL_WIN[2]] == "O"
    "O"
  elsif board[RIGHT_DIAGONAL_WIN[0]] == "O" && board[RIGHT_DIAGONAL_WIN[1]] == "O" && board[RIGHT_DIAGONAL_WIN[2]] == "O"
    "O"
  
  end
    
end
  


##```ruby
##x_win_diagonal = ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
##winner(x_win_diagonal) #=> "X"

##o_win_center_column = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
##winner(o_win_center_column) #=> "O"

##no_winner_board = ["X", "O", " ", " ", " ", " ", " ", "O", "X"]
##winner(no_winner_board) #=> nil
##```

full?(["X", "O", "X", "O", "X", "X", "O", "X", "O"])




