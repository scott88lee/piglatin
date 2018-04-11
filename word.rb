#Reworked it so now you can churn in a sentence and it outputs a sentence.

#Did bonus 1 and its starting to look like a nested nightmare.

#The SMELLIEST CODE YOU'll ever see for bonus 2

$position = 0

for value in ARGV
	
	test = value.downcase
	if test[0,2] == "qu"
		test = test[2, (test.length-1)] + "quay "
		print test

	elsif test[0,3] == "squ"
		test = test[3, (test.length-1)] + "squay "
		print test

	elsif test[0] =~ /[aeiou]/
		print test + "way "
	else
		if test[0] == "y"
			test.chars.to_a.each do |i|
				# i == "a" || test[0] == "e" || test[0] == "i" || test[0] == "o" || test[0] == "u"
				if i =~ /[aeiou]/
					break
				else
					$position += 1
				end
			end
			print test[$position, (test.length-1)] + test[0, $position] +"ay "
			$position = 0
		else
			test.chars.to_a.each do |i|
				# i == "a" || test[0] == "e" || test[0] == "i" || test[0] == "o" || test[0] == "u"
				if i == "y"
					break
				else
					$position += 1
				end
			end
			print test[$position, (test.length-1)] + test[0, $position] +"ay "
			$position = 0
		end
	end
end
puts " "