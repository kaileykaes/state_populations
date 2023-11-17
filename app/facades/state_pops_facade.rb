require 'csv'

class StatePopsFacade
  def save_data_by_year(year, csv_file_path)
    states_data = StatesService.endpoint(year)[:data]
    csv_populate(csv_file_path, states_data)
  end

  def save_all(csv_file_path)
    states_data = StatesService.endpoint[:data]
    csv_populate(csv_file_path, states_data)
  end

  private
  def csv_populate(csv_file_path, states_data)
    CSV.open(csv_file_path, 'w', write_headers: true, headers: headers(states_data)) do |csv|      
      states_data.each do |datum|
        csv << CSV::Row.new(datum.keys, datum.values)
      end
    end
  end

  def headers(states_data)
    states_data.first.keys.map { |header| header.to_s }
  end
end