require_relative "./prim.rb"

def menu
  clear
  puts "---\\Menü/---"
  puts "p = Primzahl"
  puts "m = Mirpzahl"
  puts "e = Ende"
  puts "------------"
  print "antwort: "
  auswahl = gets.chomp
  case auswahl
  when "p"
    prim
  when "m"
    mirp
  when "e"
    exit
  else
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

def zurück
  gets
  menu
end
