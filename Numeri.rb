max = 10
esatte = 0
for cont in 1..max
	n1 =1+ Random.rand(10)
	n2 =1+ Random.rand(10)
	print "quanto fa ", n1, "*", n2, " ?"
	n =gets.chomp.to_i
	if n1*n2 == n
		puts "esatto"
		esatte = esatte+1
	else 
		puts "sbagliato"
	end	
end
puts
print"numero risposte esatte ", esatte, "\n"
print"numero risposte sbagliate ", max - esatte, "\n"
case esatte 
	when 1..4
		print "voto ", 1, "\n"
	when 5..8
		print "ottimo", 7, "\n"
	when 9..10
		print "eccellente", 10, "\n"
end
