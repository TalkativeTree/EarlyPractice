sudoku_num_list = '003020600900305001001806400008102900700000008006708200002609500800203009005010300'.split('').each{|square| square.to_a }
p sudoku_num_list

# square_inputs = split_num_digits(sudoku_num_list)
# p square_inputs
# p square_inputs.map { |e, i|  e = square_inputs.index(e); i = square_inputs.index(i)}

enum = ['1','2','3','4'].enum_for(:each_slice, 1)
p enum

