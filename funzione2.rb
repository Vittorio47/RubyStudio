def saluto( nome )
    puts "Ciao #{nome}"
end

nomi = [ "Tizio", "Caio", "Sempronio" ]

#for i in 0..2 
#  saluto( nomi[i] )
#end

for i in 0 .. nomi.length-1
  saluto( nomi[i] )
end
