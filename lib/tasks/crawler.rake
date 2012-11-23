namespace :gistar do
  namespace :crawl do
    desc 'Crawl gist in hatena bookmark'
    task hatena_bookmark: :environment do
      hatena = HatenaBookmark.new
      hatena.save_today_gist
    end
  end
end
