require_relative "./prim.rb"

def menu
  clear
  puts "(P)rimzahl oder (M)irpzahl?"
  print "antwort: "
  auswahl = gets.chomp
  case auswahl
  when "p"
    prim
  when "m"
    mirp
  else
    system "cls" or "clear"
    menu
  end
end

def abfrage
  system "cls" or "clear"
  puts "bitte eine zahl eingeben"
  print "antwort: "
  @zahl = gets.to_i
end

def clear
  system "cls" or "clear"
end
