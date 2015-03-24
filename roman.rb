class Fixnum
  
  def to_roman

    # Counts up by 3 of the smaller numeral, and then precedes one numeral by the larger numeral.
    # VIII = 8 
    # IX   = 9 
    # X    = 10 

    # XCVIII = 98 
    # XCIX   = 99
    # XC     = 90, IX = 9 

    self > 1000 
    m_num = self / 1000 
    remainder = self - (m_num * 1000)
    m = "M"*m_num

    d_num = remainder / 500 
    remainder = remainder - (d_num * 500)
    d = "D"*d_num

    c_num = remainder / 100
    remainder = remainder - (c_num * 100)
    c = "C"*c_num
    
    l_num = remainder / 50 
    remainder = remainder - (l_num * 50)
    l = "L"*l_num

    x_num = remainder / 10 
    remainder = remainder - (x_num * 10)
    x = "X"*x_num

    v_num = remainder / 5 
    remainder = remainder - (v_num * 5)
    
    
    i_num = remainder / 1
    remainder = remainder - (i_num * 1)
    if i_num == 4 then 
      # p i_num
      i_num = 1
      # p v_num
      v_num = v_num + 1 
    end

    v = "V"*v_num
    i = "I"*i_num

    "#{m}#{d}#{c}#{l}#{x}#{v}#{i}"

    # V,5
    # X,10
    # L,50
    # C,100
    # D,500
    # M,1000
  end
end



p 4.to_roman

