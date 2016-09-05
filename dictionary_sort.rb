
def dictionary_sort(arr)
  # Your code here to sort the array
  revised_array = []

  arr.each do |element|
  	element = element.to_s
  	revised_array << element
  end

  #revised_array = revised_array.sort!
  revised_array = revised_array.sort_by { |word| word.downcase }



  puts "Congratulations! Your dictionary has " + revised_array.length.to_s + " words:"
  puts revised_array
end

# ...your code here to initialize the program and take user input
def retrieve_words
	dictionary = []
	breakline = 0;
	puts "Type a word:"
	reply = gets.chomp

	while breakline < 3
		
		if reply == ""
			breakline += 1
			if breakline == 2
				break
			end
			reply = gets.chomp
		else
			dictionary.push(reply)
			puts "Type another word (or press enter to finish):"
			reply = gets.chomp
		end
	end
	
	dictionary_sort(dictionary) 	
end

retrieve_words

