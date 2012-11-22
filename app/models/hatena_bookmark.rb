# coding: utf-8
require 'open-uri'
require 'rexml/document'

class HatenaBookmark
  def save_today_gist
    today_gists = get_today_gist
    today_gists.each do |today_gist|
      gist = Gist.new
      gist.name = today_gist[0]
      gist.url = today_gist[1]
      gist.count = today_gist[2]
      gist.save
    end
  end

  def get_today_gist
    gist = []
    uri = URI.parse(Settings.hatena_rss_url)
    doc = uri.open {|rss| REXML::Document.new(rss)}
    doc.root.elements.each("item") do |item|
      dc_date = Time.parse(item.elements["dc:date"].text)
      gist.push([
        item.elements["title"].text,
        item.attributes["about"],
        item.elements["hatena:bookmarkcount"].text
      ]) if dc_date.today?
    end
    gist
  end
end
