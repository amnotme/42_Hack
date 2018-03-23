# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    bruteforce.rb                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhernand <lhernand@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/21 09:56:55 by lhernand          #+#    #+#              #
#    Updated: 2018/03/21 10:14:48 by lhernand         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/ruby
arr  = ARGV

def bruteforce(arguments)
	alphabet_low = ('a'..'z').to_a
	alphabet_upp = ('A'..'Z').to_a
	res = []
	if arguments.length == 0
		res << ""
		res
	else
		n = 1
		while n <= 26	
			res = []
			arguments[0].split('').each do |c|
				if alphabet_low.include?(c)
					res << ((((c.ord - 'a'.ord) + n) % 26) + 'a'.ord).chr
				elsif alphabet_upp.include?(c)
					res << ((((c.ord - 'A'.ord) + n) % 26) + 'A'.ord).chr
				else
					res << c
				end
			end
			n = n + 1
			puts res.join
		end
	end
end

bruteforce(arr)
