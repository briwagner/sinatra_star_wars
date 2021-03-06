require 'sinatra'
require 'active_record'
require 'pathname'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

database_config = { :adapter => "sqlite3",
                    :database => "#{APP_ROOT}/db/film.sqlite3"}

ActiveRecord::Base.establish_connection(database_config)

require_relative 'controllers/star_wars'
require_relative 'models/films'
require_relative 'models/actors'
require_relative 'models/casting'
require_relative 'models/comments'