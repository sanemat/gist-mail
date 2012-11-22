# coding: utf-8
require 'open-uri'
require 'rexml/document'

class HatenaBookmark
  def get_today_gist
    gist = []
    uri = URI.parse(Settings.hatena_rss_url)
    doc = uri.open {|rss| REXML::Document.new(rss)}
    doc.root.elements.each("item") do |item|
      dc_date = Time.parse(item.elements["dc:date"].text)
      gist.push([item.attributes["about"], item.elements["hatena:bookmarkcount"].text]) if dc_date.today?
    end
    gist
  end
end
