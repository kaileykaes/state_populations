class StatePopsFacade
  def save_data_by_year(year)
    states_data = StatesService.endpoint(year)[:data]
    states = states_data.each do |datum|
      state = State.create!(name: datum[:State])
      state.years.create!(year: year, population: datum[:Population])
    end
  end

  private
  def state_names
    data = StatesService.endpoint(2013)[:data]
    states = data.map { |datum| datum[:State] }
  end
end