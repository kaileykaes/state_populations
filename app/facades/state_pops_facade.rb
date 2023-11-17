require 'csv'

class StatePopsFacade
  def save_data_by_year(year, csv_file_path)
    states_data = StatesService.endpoint(year)[:data]
    headers = states_data.first.keys.map { |header| header.to_s }
    CSV.open(csv_file_path, 'w', write_headers: true, headers: headers) do |csv|      
      states_data.each do |datum|
        csv << CSV::Row.new(datum.keys, datum.values)
      end
    end
  end

  def save_all(csv_file_path)
    years.each do |year|
      data = StatesService.endpoint(year)[:data]
      save_data_by_year(year, csv_file_path)
    end
  end

  private
  def years
    [2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021]
  end
end