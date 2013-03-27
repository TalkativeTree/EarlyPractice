def mode(array)

    freq = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    max = freq.values.max                 
    freq.select { |k, f|; (f==max) }.map {|k, f| k}
 
end

puts mode([1,2,3])