require_relative 'screenshotter'
require_relative 'page'

page = ARGV[0]
interval = ARGV[1]

trello = Page.new(page, "#board", "my_trello_#{Time.now}.png")

while true
  Screenshotter.take_screenshots(:chrome, [trello])
  sleep interval
end
                              
