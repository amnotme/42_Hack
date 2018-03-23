# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    vignere.rb                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/21 10:53:35 by lhernand          #+#    #+#              #
#    Updated: 2018/03/21 11:40:15 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

args = ARGV
def vigenere_cipher(string, key_sequence)
	alphabet = ("a".."z").to_a
	alphabet2 = ("A".."Z").to_a
	symbols = (" !@#^*()-_=+")
	result = string.chars.map.with_index do |char, idx|
		if alphabet.include?(char)
			old_idx = alphabet.index(char)
			offset = key_sequence[idx % key_sequence.length]
			new_idx = (old_idx + offset) % alphabet.length
			alphabet[new_idx]
		elsif alphabet2.include?(char)
			old_idx = alphabet2.index(char)
			offset = key_sequence[idx % key_sequence.length]
			new_idx = (old_idx + offset) % alphabet2.length
			alphabet2[new_idx]
		elsif symbols.include?(char)
			if char == '!'
				char + ' '
			else
				char
			end
		end
	end
	result.join().strip
end

def change_key(string)
	arr = []
	string.split('').each do |c|
		arr <<  (c.downcase.ord - 'a'.ord).to_i
	end
	arr
end

if args.length == 2
	puts vigenere_cipher(args[1], change_key(args[0]))
else
	puts
end
