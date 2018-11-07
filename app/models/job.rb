class Job < ApplicationRecord
    validates_presence_of :name, :profession, :hospital, :department, :license, :caretype, :scope, :working_hours, :date_start, :date_finish
end
