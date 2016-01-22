def solve_cipher(input, x)
  alphabet_arr = ("a".."z").to_a
  input_arr = input.split("")
  decoded_message = ""
  input_arr.each do | char | 
      shifted_char = (char.ord + x).chr
  decoded_message += shifted_char
  end
  puts decoded_message
end

solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)