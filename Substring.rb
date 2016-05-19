#substrings('Howdy partner, sit down! How's it going? going', dictionary)
#=> {'down'=>1, 'how'=>2, 'howdy'=>1,'go'=>1, 'going'=>1, 'it'=>2, 'i'=> 3, 'own'=>1,'part'=>1,'partner'=>1,'sit'=>1}


def substrings(text,dictionary)
	text_arr=text.downcase.split(/[ ,!.\?]/)
	hash_out={}
	
	dictionary.each do |d_word|
		text_arr.each do |t_word|
			if t_word==d_word
				
				if hash_out[d_word]!=nil 
					hash_out[d_word]+=1
					else 
						hash_out[d_word]=1
					end
			end
		end	
	end
	
	hash_out
	
end

text="Howdy partner, sit down! How's it going? going"
dictionary = ['below','down','go','going','horn','how','howdy','it','i','low','own','part','partner','sit']

substrings(text,dictionary)