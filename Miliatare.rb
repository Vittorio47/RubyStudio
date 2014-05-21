alba =false
while alba ==false
puts "quanti giorni all'alba?"

giorni=gets.chomp.to_i

case giorni
	when 1..90
		puts "sei un nonno"
	when 90..180
		puts "è ancora lunga"
	when 180..300
		puts "è durissima"
	when 300..365
		puts "sei una burba!"
	else
		puts "sei un borghese"	
		alba = true
	end	
end
