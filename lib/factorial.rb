def factorial(n)
    product = 1
    while n > 1
      product *= n
     binding.irb # Mystery new line!
      n -= 1
    end
    product
  end
  
  p factorial(5)