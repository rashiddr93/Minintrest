namespace :news_api do
  desc "Fetch news sources from 'https://newsapi.org'"
  #
  # fetch_sources
  #
  # @author rashid
  #
  task fetch_sources: :environment do
    require 'net/http'
    require 'json'

    url = 'https://newsapi.org/v1/sources?language=en'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    sources = JSON.parse(response)['sources']
    sources.each do |source_data|
      source = Source.find_or_initialize_by(source_id: source_data['id'], provider_id: 1)
      source_params = source_data.slice(
        'name', 'description', 'url', 'category', 'language', 'country'
      )
      if source.update!(source_params)
        source_data['sortBysAvailable'].each do |sort_by|
          source.sort_bies.first_or_create(name: sort_by)
        end
      end
      p "Updated #{source.name}"
    end
  end
end
