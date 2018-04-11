# write your solution here
$position = 0

for value in ARGV
	
	test = value.downcase

	if test[0] =~ /[aeiou]/
		puts test + "way "
	else
		
		test.chars.to_a.each do |i|
			# i == "a" || test[0] == "e" || test[0] == "i" || test[0] == "o" || test[0] == "u"
			if i =~ /[aeiou]/
				break
			else
				$position += 1
			end
		end
		puts test[$position, (test.length-1)] + test[0, $position] +"ay "
		$position = 0
	end
end