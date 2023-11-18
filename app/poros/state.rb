class State
  attr_reader :id, 
              :name, 
              :year,
              :population
  
  def initialize(attributes)
    @id = attributes[:id_state]
    @name = attributes[:state]
    @year = attributes[:year].to_i
    @population = attributes[:population].to_i
  end
end