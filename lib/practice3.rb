#課題3
require "sinatra/base"
require "sinatra/reloader"

require_relative "configure.rb"

# TODO :
# 1. ekisukeを利用するため、lib/configure.rbの設定をする
# 2. 
class MobProApp < Sinatra::Base
  # オートリロード設定
  configure :development do
    register Sinatra::Reloader
  end

  # sample
  get "/" do
    # 何もしない
  end
end
