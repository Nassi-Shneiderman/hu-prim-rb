require_relative "./menu.rb"
require "prime"

def prim
  abfrage
  clear
  primzahlen = (2..@zahl).to_a
  print "Bitte warten"
  @primzahlen = primzahlen.select{|each| each.prime? and each < @zahl }.to_s
  clear
  if @zahl.prime? == true
    puts "#{@primzahlen.delete("[]")}, [#{@zahl}] sind Primzahlen"
  else
    puts @primzahlen.delete("[]")
    puts "#{@zahl} ist keine Primzahl"
  end
  zurück
end

def mirp
  abfrage
  clear
  if @zahl < 10
    puts "Eine Mirpzahl benötigt mindestens 2 ziffern"
    zurück
  end
  if @zahl.prime? == true && @zahl.to_s.reverse.to_i.prime? == true
    puts "#{@zahl} bzw. #{@zahl.to_s.reverse} ist eine Mirpzahlenzahl"
  else
    puts "#{@zahl} bzw. #{@zahl.to_s.reverse} ist keine Mirpzahlzahl"
  end
  zurück
end
