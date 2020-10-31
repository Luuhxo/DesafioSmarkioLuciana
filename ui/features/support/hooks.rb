require 'selenium-webdriver'
require 'report_builder'

  Before do |scn|
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    page.driver.quit
    Capybara.page.driver.browser.manage.window.maximize
  end


  ReportBuilder.configure do |config|
    config.json_path = 'data/reports/report.json'
    config.report_path = "data/reports/report"
    config.report_types = [:html]
    config.report_title = "Desafio Smarkio"
    config.color = "blue"
  end

at_exit do
  ReportBuilder.build_report
end