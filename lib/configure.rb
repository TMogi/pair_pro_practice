require "bundler/setup"
Bundler.require

Ekisuke::Configure.configure do |c|
  # TODO : 各自設定すること
end

Ekisuke::Connection.logger = Logger.new(File::NULL)
