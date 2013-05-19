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
    @word = "dad"
    @letter_index
  end

  def shake! 
    @boggle_dice.each do |die| 
      side = die.sample()
      side == "Q" ? @letters_rolled << "Qu" : @letters_rolled << side 
    end
    @temp_board = @letters_rolled.dup
    @filled_board = Array.new(4) { @temp_board.shift(4) }
    # p @filled_board
    # p @letters_rolled
  end
  
  def check_board_for_letters(word) 
    print_board
    @word = word.upcase
    @word.split('').each do |letter| 
      return "word can't be spelled" if @letters_rolled.include?(letter) == false
      p "found #{letter}!" if  @letters_rolled.include?(letter)
    end
  end

  def find_letter_index(letter)
    print_board
    @spelled_word_indexes = []
    @filled_board.each_index do |row| 
      @letter_index = @filled_board[row].index(letter)
      @spelled_word_indexes << [row, @letter_index] if @letter_index 
      end
    p "The indexes of the first letter are #{@spelled_word_indexes}"
    @letter_index
  end

  def check_neighbors(r,c)
  neighbors = [[r-1, c-1], [r  , c-1], [r+1, c-1], [r-1, c  ], 
               [r+1, c  ], [r-1, c+1], [r  , c+1] ,[r+1, c+1]]
  p neighbors
  end
  
  def check_if_neighbors(current_letter, prev_letter)
    c_l_i = find_letter_index(current_letter)
    p_l_i = find_letter_index(prev_letter)
    p p_l_i
    p c_l_i
    c_l_i.each {|index| check_neighbors(index[0], index[1]).include?(p_l_i) }
  end 

  def spell_word
    shake!
      counter = 0
      spelled_word = ''
      until spelled_word == @word[0..counter]
      letter = @word[counter]
      prev_letter = @word[counter-1]
      spelled_word = spelled_word + letter
      counter +=1
      if counter > 1
        puts "current letter is #{letter}"
        puts "previous letter was #{prev_letter}"
        puts find_letter_index(letter) 
      end
    end
    p spelled_word
  end

  def print_board
    shake!
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
  	check_board_for_letters
    spell_word
	end



 #  def play_game
 #  	puts "Type a word to guess, or \"I hate boggle!\" to exit."
 #    print "> "
 #    word_guess = gets.chomp
 #    if word_guess == "I hate boggle!"
 #  	  return ":("
 #  	end
 #  end
end

board = BoggleBoard.new
# board.shake!
# board.spell_word
board.find_letter_index("A")
board.check_neighbors(1,2)
board.check_if_neighbors("A", "B")
# board.check_board_for_letters("cat")
# board.check_board_for_letters("dad")
# board.check_board_for_letters("dan")
# # board.print_board
# board.starting_point("eat")
# board.starting_point("toe")
# board.starting_point("cat")
# board.find_word