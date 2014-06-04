def leggi_file(file_dati)
  lst = []
  File.open(file_dati, 'r') do |f1|  
    while line = f1.gets  
      prod, prezzo = line.split(',')  
      lst << [prod, prezzo.to_f]
    end  
  end
  rescue Errno::ENOENT
    puts "File inesistente, al prossimo salvataggio dei dati sarà creato"
  ensure 
    return lst
end

def scrivi_file(file_dati, lst)
  unless defined? lst && lst.size != 0
    puts "Nulla da scrivere. Nessun elemento trovato"
    return
  end
  File.open(file_dati, 'w') do |f2|  
    lst.each do |prod, prezzo|
       f2.puts prod + ',' + prezzo.to_s
    end
  end
end

def leggi_dati(lst)
  unless defined? lst && lst.size != 0
    lst = []
  end
  print "Inserisci il prodotto: "
  prod = gets.chomp.to_s
  print "Inserisci il prrezzoo: "
  prezzo = gets.chomp.to_f
  lst << [prod, prezzo]
end

def stampa_dati(lst)
  unless defined? lst && lst.size != 0
    puts "Nessun elemento trovato"
    return
  end
  lst.each do |prod, prezzo|
     printf("prodotto: %20s     prezzo: %10.2f\n", prod, prezzo)
  end
end

def stampa_menu
  puts "Cosa vuoi fare?"
  puts "0 - uscire"
  puts "1 - leggere i dati dal file"
  puts "2 - leggere i dati dalla tastiera"
  puts "3 - stampare i dati"
  puts "4 - scrivere il file"
end

dati = "../Ruby_dati/datti.txt"

while true
  stampa_menu
  scelta = gets.chomp.to_i
  case scelta
	 when 0
		break
     when 1
		lista = leggi_file(dati)
	 when 2
		leggi_dati(lista)
	 when 3
		stampa_dati(lista)
     when 4
        scrivi_file(dati, lista)
	 else
		puts "Scelta errata"
  end

end
