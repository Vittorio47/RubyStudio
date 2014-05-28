def leggi_dati(lst)
  lst << ["computer", 400]
  lst << ["tastiera", 15]
  lst << ["mouse", 8]
end

def stampa_dati(lst)
  lst.each do |prod, prezzo|
     printf("prodotto: %20s     prezzo: %10.2f\n", prod, prezzo)
  end
end

lista = []
leggi_dati(lista)
stampa_dati(lista)