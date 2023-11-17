require 'csv'

class StatePopsFacade
  def save_data_by_year(year)
    states_data = StatesService.endpoint(year)[:data]
    states = states_data.each do |datum|
      require 'pry'; binding.pry
    end
  end

  def save_all
    years.each do |year|
      data = StatesService.endpoint(year)[:data]
        save_data_by_year(year)
    end
  end

  private
  def years
    [2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021]
  end
end