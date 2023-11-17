class PopsCalulator
  attr_reader :states

  def initialize(file_path)
    @states = create_states(file_path)
  end

  def create_states(file_path)
    states_info = CSV.open(file_path, headers: true, header_converters: :symbol)
    states_info.map do |row|
      State.new(row)
    end
  end
end