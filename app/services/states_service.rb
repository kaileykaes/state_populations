class StatesService
  class << self
    def endpoint(year)
      parse_response(conn.get("data?drilldowns=State&measures=Population&year=#{year}"))
    end
    
    private 
    def conn 
      Faraday.new("https://datausa.io/api/")
    end
    
    def parse_response(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end