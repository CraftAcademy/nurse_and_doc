class Job < ApplicationRecord
    validates_presence_of :profession, :hospital, :department, :license, :caretype, :scope, :working_hours, :date_start, :date_finish
end
