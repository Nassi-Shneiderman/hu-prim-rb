require_relative "./menu.rb"
require "prime"

def prim
  abfrage
  clear
  if @zahl.prime? == true
    primzahlen = (1..@zahl).to_a
    @primzahlen = primzahlen.select{|each| each.prime? and each < @zahl }.to_s
    puts "#{@primzahlen.delete("[]")}, #{@zahl} sind Primzahlen"
  else
    puts "#{@zahl} ist keine Primzahl"
  end
  zurück
end

def mirp
  abfrage
  clear
  @zahl = @zahl.to_s.reverse.to_i
  if @zahl.prime? == true
    puts "#{@zahl} ist eine mirpzahlenzahl"
  else
    puts "#{@zahl} ist keine Mirpzahlzahl"
  end
  zurück
end
