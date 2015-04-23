class Fixnum
  define_method(:coin) do
    output = ""
    quarters = self./(25).floor()
    output = quarters.to_s().concat(" quarters")    
#    pennies = self.%(1).to_s()
#    output = pennies.concat(" pennies")
  end
end
