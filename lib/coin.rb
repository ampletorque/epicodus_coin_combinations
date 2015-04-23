class Fixnum
  define_method(:coin) do
    output = ""
    if (quarters = self./(25).floor()) > 0
      output = quarters.to_s().concat(" quarters, ")
      if (remainder = self.%(25)) == 0
        return output
      end
    end
    dimes = remainder./(10).floor()
    remainder = remainder.%(10)
    output = output.concat(dimes.to_s().concat(" dimes, "))
    nickels = remainder./(5).floor()
    remainder = remainder.%(5)
    output = output.concat(nickels.to_s().concat(" nickels, "))
    pennies = remainder
    output = output.concat(pennies.to_s().concat(" pennies"))
#    pennies = self.%(1).to_s()
#    output = pennies.concat(" pennies")
  end
end
