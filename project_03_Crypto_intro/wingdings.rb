# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    wingdings.rb                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/21 10:15:33 by lhernand          #+#    #+#              #
#    Updated: 2018/03/21 10:51:21 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

args = ARGV
EMOJIS = {'a' => '😀', 'b' => '😃', 'c' => '😄', 'd' => '😁', 
		  'e' => '😆', 'f' => '😅', 'g' => '😂', 'h' => '🤣', 
		  'i' => '☺️ ', 'j' => '😊', 'k' => '😇', 'l' => '🙂',
		  'm' => '🙃', 'n' => '😉', 'o' => '😌', 'p' => '😍',
		  'q' => '😘', 'r' => '😗', 's' => '😙', 't' => '😚', 
		  'u' => '😋', 'v' => '😛', 'w' => '😝', 'x' => '😜',
		  'y' => '🤪 ', 'z' => '🤨 ' }


def wingdings(string)
	res = []
	if string.length == 0
		res << ''
		res
	else
		res = []
		string[0].split('').each do |c|
		flag = 0
			EMOJIS.each do |key , val|
				if key == c.downcase
					res << val << ' '
					flag = 1
				end
			end
			res  << c if flag == 0
		end
		res.join
	end
end

puts wingdings(args)
