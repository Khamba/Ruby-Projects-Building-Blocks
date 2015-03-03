def caesar_cipher(str, shift_factor = 1)
	str_out = ""
	str.each_byte do |c|
		a = c
		if c >= 65 + shift_factor && c <= 90 + shift_factor
			c = c - shift_factor
		elsif c >= 65 && c < 65+shift_factor
			c = 91 - (shift_factor - c + 65)
		elsif c > 90 + shift_factor && c <=90
			c = 64 - (shift_factor+90-c)
		elsif c >= 97 + shift_factor && c <= 122 + shift_factor
			c = c - shift_factor
		elsif c >= 97 && c < 97+shift_factor
			c = 123 - (shift_factor - c + 97)
		elsif c > 122 + shift_factor && c <= 122
			c = 96 - (shift_factor + 122 - c)
		else
			c = c
		end	
		str_out += c.chr
	end
	return str_out
end

puts caesar_cipher("Sample String!", -5)