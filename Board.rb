class BattleBoard
  attr_reader :board
def initialize
   #board_lines are 63 characters long. 1 appears at index 6 and each column's index is / 6: (6..60)
    board_line1  = "      1     2     3     4     5     6     7     8     9    10   "
    board_line2  = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line3  = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_A = "  A|     |     |     |     |     |     |     |     |     |     |"
    board_line5  = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line6  = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_B = "  B|     |     |     |     |     |     |     |     |     |     |"
    board_line8  = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line9  = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_C = "  C|     |     |     |     |     |     |     |     |     |     |"
    board_line11 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line12 = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_D = "  D|     |     |     |     |     |     |     |     |     |     |"
    board_line14 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line15 = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_E = "  E|     |     |     |     |     |     |     |     |     |     |"
    board_line17 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line18 = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_F = "  F|     |     |     |     |     |     |     |     |     |     |"
    board_line21 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line22 = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_G = "  G|     |     |     |     |     |     |     |     |     |     |"
    board_line24 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line25 = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_H = "  H|     |     |     |     |     |     |     |     |     |     |"
    board_line27 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line28 = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_I = "  I|     |     |     |     |     |     |     |     |     |     |"
    board_line30 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    board_line31 = "   |     |     |     |     |     |     |     |     |     |     |"
    board_line_J = "  J|     |     |     |     |     |     |     |     |     |     |"
    board_line33 = "   |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|"
    @board  = [board_line1, 
		           board_line2 , board_line3 , board_line_A,
		           board_line5 , board_line6 , board_line_B,		 
		           board_line8 , board_line9 , board_line_C, 
		           board_line11, board_line12, board_line_D,  
		           board_line14, board_line15, board_line_E,  
		           board_line17, board_line18, board_line_F,  
		           board_line21, board_line22, board_line_G,  
		           board_line24, board_line25, board_line_H,  
		           board_line27, board_line28, board_line_I,  
		           board_line30, board_line31, board_line_J,
		           board_line33]
    end
end

board = BattleBoard.new
string_board = board.board.join
string_board.insert(240,"Q")
