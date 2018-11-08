class Job < ApplicationRecord
    validates_presence_of :scope, :working_hours, :date_start, :date_finish
end
