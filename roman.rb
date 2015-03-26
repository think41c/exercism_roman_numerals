######################
# This implementation does NOT allow for proper 'subtraction' in roman numerals, but counts up fine. 
    # self > 1000 
    # m_num = self / 1000 
    # remainder = self - (m_num * 1000)
    # m = "M"*m_num

    # d_num = remainder / 500 
    # remainder = remainder - (d_num * 500)
    # d = "D"*d_num

    # c_num = remainder / 100
    # remainder = remainder - (c_num * 100)
    # c = "C"*c_num
    
    # l_num = remainder / 50 
    # remainder = remainder - (l_num * 50)
    # l = "L"*l_num

    # x_num = remainder / 10 
    # remainder = remainder - (x_num * 10)
    # x = "X"*x_num

    # v_num = remainder / 5 
    # remainder = remainder - (v_num * 5)
    
    
    # i_num = remainder / 1
    # remainder = remainder - (i_num * 1)
    # if i_num == 4 then 
    #   # p i_num
    #   i_num = 1
    #   # p v_num
    #   v_num = v_num + 1 
    # end

    # v = "V"*v_num
    # i = "I"*i_num

    # "#{m}#{d}#{c}#{l}#{x}#{v}#{i}"

   
######################################    



class Fixnum
  def to_roman
    answer = []
    num_length = self.to_s.length
    num_string = self.to_s


      case num_string[-4]
      when "1" then answer << "M"
      when "2" then answer << "MM"
      when "3" then answer << "MMM"
      when "4" then answer << "MMMM"
      end

      case num_string[-3]
      when "1" then answer << "C"
      when "2" then answer << "CC"
      when "3" then answer << "CCC"
      when "4" then answer << "CD"
      when "5" then answer << "D"
      when "6" then answer << "DC"
      when "7" then answer << "DCC"
      when "8" then answer << "DCCC"
      when "9" then answer << "CM"
      end

      case num_string[-2]
      when "1" then answer << "X"
      when "2" then answer << "XII"
      when "3" then answer << "XIII"
      when "4" then answer << "XL"
      when "5" then answer << "L"
      when "6" then answer << "LX"
      when "7" then answer << "LXX"
      when "8" then answer << "LXXX"
      when "9" then answer << "XC"
      end

      case num_string[-1]
      when "1" then answer << "I"
      when "2" then answer << "II"
      when "3" then answer << "III"
      when "4" then answer << "IV"
      when "5" then answer << "V"
      when "6" then answer << "VI"
      when "7" then answer << "VII"
      when "8" then answer << "VIII"
      when "9" then answer << "IX"
      end


    answer.join
  end
end

p 982.to_roman
