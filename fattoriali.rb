=begin
   Il programma calcola il fattoriale di un numero intero.
   Per esempio:

   5! = 5 * 4 * 3 * 2 * 1
=end

# Approcio iterativo
def fatt_i( num )
   temp = 1

   for i in 1..num
       temp = temp * i
   end

   temp
end


# Approcio ricorsivo (non otimizzato)
def fatt_r( num )
   if num == 1
      return 1
   else
      return num * fatt_r( num - 1 )
   end
end


# Approcio ricorsivo (ottimizzato, ricorsione di coda)
def fatt_rc( num, acc )
   if num == 1
      return acc
   else
      return fatt_rc( num - 1, num * acc )
   end
end


n = 5
print "Il fattoriale (metodo iterativo) di ", n , " e' ", fatt_i(n), "\n"
#print "Il fattoriale (metodo ricorsivo) di ", n , " e' ", fatt_r(n), "\n"
print "Il fattoriale (metodo ricorsivo) di ", n , " e' ", fatt_rc(n, 1), "\n"
