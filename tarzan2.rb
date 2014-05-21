=begin
    Questo programma chiede il nome della scimmia di Tarzan.
	Se il nome inserito è sbagliato, continua a richiederlo
	(anche fino all'infinito) finché il nome corretto non 
	viene inserito.
=end

indovinato = false
tentativi = 0 # NUOVO

while indovinato == false
	print "Come si chiama la scimmia di Tarzan? "
	nome = gets.chomp
	tentativi = tentativi + 1 # NUOVO

	if nome.downcase.strip == "cita"
		puts "Esatto"
		# Siamo arrivati al punto che vogliamo interrompere il ciclo
		indovinato = true
	else
		puts "Sbagliato"
	end
end

print "Hai indovinato in ", tentativi, " tentativi\n" # NUOVO
