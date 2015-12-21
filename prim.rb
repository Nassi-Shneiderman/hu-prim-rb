require_relative "./menu.rb"
require "prime"

def prim
  abfrage
  clear
  if @zahl.prime? == true
    primzahlen = (1..@zahl).to_a
    @primzahlen = primzahlen.select{|each| each.prime? and each < @zahl }.to_s
    puts "#{@primzahlen.delete("[]")}, [#{@zahl}] sind Primzahlen"
  else
    primzahlen = (1..@zahl).to_a
    @primzahlen = primzahlen.select{|each| each.prime? and each < @zahl }.to_s
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
