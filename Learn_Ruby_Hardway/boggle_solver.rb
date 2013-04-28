class BoggleBoard
  def initialize
    @boggle_dice = [['A','A','E','E','G','N'],
                    ['E','L','R','T','T','Y'],
                    ['A','O','O','T','T','W'],
                    ['A','B','B','J','O','O'],
                    ['E','H','R','T','V','W'],
                    ['C','I','M','O','T','U'],
                    ['D','I','S','T','T','Y'],
                    ['E','I','O','S','S','T'],
                    ['D','E','L','R','V','Y'],
                    ['A','C','H','O','P','S'],
                    ['H','I','M','N','Q','U'],
                    ['E','E','I','N','S','U'],
                    ['E','E','G','H','N','W'],
                    ['A','F','F','K','P','S'],
                    ['H','L','N','N','R','Z'],
                    ['D','E','I','L','R','X']]
    @letters_rolled = []
    @board 		    = []
  end

  def shake! 
    @boggle_dice.each do |die| 
      side = die.sample()
      side == "Q" ? @letters_rolled << "Qu" : @letters_rolled << side 
    end
    @filled_board = Array.new(4) { @letters_rolled.dup.shift(4) }
    p @filled_board
  end

  def print_board
    i=0
    @letters_rolled.each do |side|
      i += 1
      print side.ljust(3)
      if i % 4 == 0
        print "\n"
      end
    end
  end

  def check_word(word)
  	starting_point(word)
 	  @first_letter_square.each{ |letter_index| find_word(letter_index) }
	end

  def starting_point(word_guess)
    shake!
    @word = word_guess.upcase
    @first_letter = @word[0]
    @first_letter_square = []
    
    @filled_board.each_index do |row| 
      letter_index = @filled_board[row].index(@first_letter)
      @first_letter_square << [row, letter_index] if letter_index 
      end
    # rows_with_firstletter = @filled_board.find_all{|row| row.include?(first_letter)}
    p "The indexes of the first letter are #{@first_letter_square}"
    # @first_letter_index.each{|letter_index| check_word(letter_index)}
  end

	def find_word([r,c])
	  spelled_word = ''
	  # spelled_word_index = []
	  letter = @word[counter]
	  spelled_word = spelled_word + letter
	  if spelled_word == @word[0..counter]
	    return "You can spell #{spelled_word}"
	  end
	  counter += 1
	  spelled_word = spelled_word + find_word([r-1, c-1])
	  spelled_word = spelled_word + find_word([r  , c-1])
	  spelled_word = spelled_word + find_word([r+1, c-1])
	  spelled_word = spelled_word + find_word([r-1, c  ])
	  spelled_word = spelled_word + find_word([r+1, c  ])
	  spelled_word = spelled_word + find_word([r-1, c+1])
	  spelled_word = spelled_word + find_word([r  , c+1])
	  spelled_word = spelled_word + find_word([r+1, c+1])
	  if spelled_word != @word[0..counter]
	    return "You cannot spell #{@word} :("
	  end
	  spelled_word
	end

  def play_game
  	puts "Type a word to guess, or \"I hate boggle!\" to exit."
    print "> "
    word_guess = gets.chomp
    if word_guess == "I hate boggle!"
  	  return ":("
  	end
  end
end

board = BoggleBoard.new
board.shake!
board.print_board
# board.check_word("eat")
# board.check_word("cot")
# board.check_word("torn")