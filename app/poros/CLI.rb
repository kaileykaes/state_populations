class CLI 
  class << self

    def welcome
      'Welcome! Would you like me to give you US population info?'
    end

    def start(answer)
      if answer.downcase == 'yes' || answer.downcase == 'y'
        beginning
      else
        ending
      end
    end

    def greatest_increase(calculator)
      "The state with the greatest population increase between 2013 and 2021 was #{calculator.greatest_increase}."
    end

    def greatest_decrease(calculator)
      "The state with the greatest population decrease between 2013 and 2021 was #{calculator.greatest_decrease}."
    end

    def lowest_decrease(calculator)
      "The state with the lowest population decrease between 2013 and 2021 was #{calculator.lowest_decrease}."
    end

    def lowest_increase(calculator)
      "The state with the lowest population increase between 2013 and 2021 was #{calculator.lowest_increase}."
    end

    def return_to_menu
      "Would you like other population info?"
    end

    private
    def beginning
      "Type the number that corresponds to the info you want.\n
      1: Greatest population increase
      2: Greatest population decrease
      3: Lowest population increase
      4: Lowest population decrease"
    end
  
    def ending
      'Shucks. Goodbye, friend!'
    end
  end
end