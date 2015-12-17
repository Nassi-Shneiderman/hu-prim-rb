require_relative "./menu.rb"
require "prime"
require "io/console"

def prim
  abfrage
  clear
  if @zahl.prime? == true
    primzahlen = (1..@zahl).to_a
    @primzahlen = primzahlen.select{|each| each.prime? and each < @zahl }.to_s
    puts "#{@primzahlen.delete("[]")}, #{@zahl} sind Primzahlen"
  end
  case STDIN.getch
  when ""
    menu
  else
    menu
  end
end

def mirp
  abfrage

end
