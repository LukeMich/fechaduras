class Log < ActiveRecord::Base
  belongs_to :port
  belongs_to :usuario
end
