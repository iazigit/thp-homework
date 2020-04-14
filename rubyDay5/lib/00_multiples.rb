def is_mul_3_or_5?(n)
  return n % 3 == 0 || n % 5== 0
end

def sum_of_3_or_5_multiples(n)
  if n.class == Integer
    return [*0..n-1].select{|e| is_mul_3_or_5?(e)}.sum
  else
    return "Envoie un entier stplease"
  end
end

#puts sum_of_3_or_5_multiples(11) #=> 33
#puts sum_of_3_or_5_multiples(10) #=> 23
