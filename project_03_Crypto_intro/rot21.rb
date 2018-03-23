# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    rot21.rb                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/21 09:23:11 by lhernand          #+#    #+#              #
#    Updated: 2018/03/21 09:53:11 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/ruby
arr  = ARGV


def rot21(arguments)
	alphabet_low = ('a'..'z').to_a
	alphabet_upp = ('A'..'Z').to_a
	res = []
	if arguments.length != 1
		res << ""
	else
		arguments[0].split('').each do |c|
			if alphabet_low.include?(c)
				res << ((((c.ord - 'a'.ord) + 21) % 26) + 'a'.ord).chr
			elsif alphabet_upp.include?(c)
				res << ((((c.ord - 'A'.ord) + 21) % 26) + 'A'.ord).chr
			else
				res << c
			end
		end
	end
	res.join
end

puts rot21(arr)
