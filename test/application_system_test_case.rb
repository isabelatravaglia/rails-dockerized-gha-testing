require "test_helper"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  parallelize(workers: 1)
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400], options: {url: ENV['HUB_URL']}
  
  Capybara.app_host = "http://#{IPSocket.getaddress(Socket.gethostname)}"
  Capybara.server_host = IPSocket.getaddress(Socket.gethostname)
  Capybara.server_port = 3001
end
