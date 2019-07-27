module CountriesHelper
  def parse_countries
    source = 'https://restcountries.eu/rest/v2/all'
    resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    result = JSON.parse(data)
  end
end
