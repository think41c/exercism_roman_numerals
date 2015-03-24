class Fixnum
  
  def to_roman
    
    # divide self by 1000. The whole number is how many times M is printed. 

    self > 1000 
    m_num = self / 1000 
    remainder = self - (m_num * 1000)
    p remainder 
    p m = "M"*m_num

    puts "\n"

    d_num = remainder / 500 
    remainder = remainder - (d_num * 500)
    p remainder
    p d = "D"*d_num

    puts "\n"

    c_num = remainder / 100
    remainder = remainder - (c_num * 100)
    p remainder 
    puts "\n"
    p c = "C"*c_num
    
    l_num = remainder / 50 
    remainder = remainder - (l_num * 50)
    p remainder
    puts "\n"
    p l = "L"*l_num

    x_num = remainder / 10 
    remainder = remainder - (x_num * 10)
    p remainder
    puts "\n"
    p x = "X"*x_num

    v_num = remainder / 5 
    remainder = remainder - (v_num * 5)
    p remainder
    puts "\n"
    p v = "V"*v_num
    
    i_num = remainder / 1
    remainder = remainder - (i_num * 1)
    p remainder
    puts "\n"
    p i = "I"*i_num

    puts "#{m}#{d}#{c}#{l}#{x}#{v}#{i}"

    # V,5
    # X,10
    # L,50
    # C,100
    # D,500
    # M,1000
  end

end



1132.to_roman

# p "H"*3