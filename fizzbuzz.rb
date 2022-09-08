def fizzbuzz
  for number in 1..100
    print "\n"
    if number%3==0 then print "Fizz" end
    if number%5==0 then print "Buzz" end
    if not number%3==0 and not number%5==0 then print number end
  end
end

fizzbuzz
