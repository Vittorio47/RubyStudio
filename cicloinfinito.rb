while true
	puts "quanto fa, 2+3 ?"
	risultato = gets.chomp.to_i
	if risultato == 5
		puts "esatto"
		break
	else
		puts "sbagliato"
	end
end
