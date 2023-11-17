require 'csv'

class StatePopsFacade
  def save_data_by_year(year, csv_file)
    states_data = StatesService.endpoint(year)[:data]
    headers = states_data.first.keys.map { |header| header.to_s }
    CSV.open(csv_file, 'w') do |csv|
      csv << headers 
      states_data.each do |datum|
        csv << CSV::Row.new(datum.keys, datum.values)
      end
    end
  end

  def save_all(csv_file)
    years.each do |year|
      data = StatesService.endpoint(year)[:data]
      save_data_by_year(year, csv_file)
    end
  end

  private
  def years
    [2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021]
  end
end