def fizzbuzz
  max = 100
  for number in 1..max
    if number%3==0 and not number%11==0 then print "Fizz" end
    if number%13==0 then print "Fezz" end
    if number%11==0
      print "Bong"
    else
      if number%5==0 then print "Buzz" end
      if number%7==0 then print "Bang" end
      if not number%3==0 and not number%5==0 and not number%7==0 and not number%13==0 then print number end
    end
    if number < max then print "\n" end
  end
end

fizzbuzz


