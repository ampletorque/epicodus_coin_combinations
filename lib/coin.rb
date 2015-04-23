class String
  define_method(:coin) do
    remainder = self.to_i()
    output = ""
    if (quarters = remainder./(25).floor()) > 0
      if quarters == 1
        output = quarters.to_s().concat(" quarter")
      else
        output = quarters.to_s().concat(" quarters")
      end
      if (remainder = remainder.%(25)) == 0
        return output
      else (output = output.concat(", "))
      end
    end

    if (dimes = remainder./(10).floor()) > 0
      if dimes == 1
        output = output.concat(dimes.to_s().concat(" dime")
      else
        output = output.concat(dimes.to_s().concat(" dimes"))
      end
      if (remainder = remainder.%(10)) == 0
        return output
      else (output = output.concat(", "))
      end
    end
    if (nickels = remainder./(5).floor()) > 0
      if nickels == 1
        output = output.concat(nickels.to_s()concat(" nickel")
      else
        output = output.concat(nickels.to_s().concat(" nickels"))
      end
      if (remainder = remainder.%(5)) == 0
        return output
      else (output == output.concat(", "))
      end
    end

    if remainder == 1
      output = output.concat(remainder.to_s().concat(" penny")
    else
      output = output.concat(remainder.to_s().concat(" pennies"))
    end
#    pennies = self.%(1).to_s()
#    output = pennies.concat(" pennies")
  end
end
