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