class PopsCalulator
  attr_reader :states, 
              :state_pops

  def initialize(file_path)
    @states = create_states(file_path)
    @state_pops = Hash.new {|hash_obj, key| hash_obj[key] = []}
  end

  def create_states(file_path)
    states_info = CSV.open(file_path, headers: true, header_converters: :symbol)
    states_info.map do |row|
      State.new(row)
    end
  end

  def greatest_increase
    relevant_populations
    pop_diffs.max_by{ |_, v| v }.first
  end

  def lowest_increase
    relevant_populations
    only_positives.min_by{ |_, v| v }.first
  end

  def greatest_decrease
    relevant_populations
    pop_diffs.min_by{ |_, v| v }.first
  end

  def lowest_decrease
    relevant_populations
    only_negatives.max_by{ |_, v| v }.first
  end

  private
  def pop_diffs
    differences = {}
    @state_pops.each do |name, pops|
      differences[name] = pops.last - pops.first
    end
    differences
  end

  def states_by_name
    @states.group_by(&:name)
  end

  def relevant_states
    relevant = {}
    states_by_name.each do |name, state_objects| 
      relevant[name] = state_objects.find_all do
        |state| state.year == 2013 || state.year == 2021
      end
    end
    relevant
  end

  def relevant_populations
    relevant_states.each do |name, states|
      states.each do |state|
        @state_pops[state.name] << state.population
      end
    end    
  end

  def only_positives
    pop_diffs.delete_if { |k, v| v.negative? }
  end

  def only_negatives
    pop_diffs.delete_if { |k, v| v.positive? }
  end
end