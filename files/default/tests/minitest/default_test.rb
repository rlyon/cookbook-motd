require File.expand_path('../support/helpers', __FILE__)

describe 'motd::default' do

  include Helpers::Motd

  # Example spec tests can be found at http://git.io/Fahwsw
  it "creates a crontab entry" do
    cron("generate_motd").must_exist.with(:hour, "*").and(:minute, "*/5").and(:day, "*")
  end

end
