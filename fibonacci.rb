def fibs(num)
  fibs_arr = []
  num.times do |x|
    if x < 2
      fibs_arr << x 
    else
      fib = fibs_arr[-1] + fibs_arr[-2]
      fibs_arr << fib 
    end
  end
  fibs_arr
end

def fibs_rec(num)
  return [0, 1].slice(0, num) if num < 3 
  arr = fibs_rec(num - 1)
  arr << (arr[-1] + arr[-2])
end

sequences = 25
p fibs(sequences)
p fibs_rec(sequences)