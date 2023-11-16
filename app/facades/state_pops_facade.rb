class StatePopsFacade
  def save_data_by_year(year)
    states_data = StatesService.endpoint(year)[:data]
    states = states_data.each do |datum|
      state = State.create!(name: datum[:State])
      state.years.create!(year: year, population: datum[:Population])
    end
  end

  def save_all
    create_states
    years.each do |year|
      data = StatesService.endpoint(year)[:data]
      data.each do |datum|
        state = State.where(name: datum[:State]).first
        state.years.create!(year: year, population: datum[:Population])
      end
    end
  end

  private
  def create_states 
    state_names.each { |name| State.create!(name: name) }
  end

  def state_names
    data = StatesService.endpoint(2013)[:data]
    states = data.map { |datum| datum[:State] }
  end

  def years
    [2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021]
  end
end