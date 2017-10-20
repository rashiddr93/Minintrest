namespace :sources do
  desc "Fetch news sources from 'https://newsapi.org'"
  #
  # update_logos
  #
  # @author rashid
  #
  task update_logos: :environment do
    Source.all.each do |source|
      source.load_pic_from('http://logo.clearbit.com')
    end
  end
end
