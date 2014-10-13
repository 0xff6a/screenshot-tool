class Page

  attr_accessor :url, :selector, :save_filepath

  def initialize(url, wait_for_selector, save_filepath)
    @url = url
    @selector = wait_for_selector
    @save_filepath = save_filepath
  end

end