def match_partners(n,k)
  pair(n-1,k-1) + pair(n-1,k)
  # if n > 1 && k > 2
  # 	match_partners(n,k)
  # end
end

def pair(n,k)
	return n if k == 1
	return 0 if n == 0
end

p match_partners(6,2)