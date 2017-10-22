namespace :sources do
  desc "Fetch news sources from 'https://newsapi.org'"
  #
  # Usage:  rake sources:update_logos
  #
  # @author rashid
  #
  task update_logos: :environment do
    Source.all.each do |source|
      source.load_pic_from('http://logo.clearbit.com')
    end
  end
end
