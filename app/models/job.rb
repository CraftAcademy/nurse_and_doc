class Job < ApplicationRecord
    belongs_to :hospital
    validates_presence_of :profession, :department, :license, :care_type, :scope, :working_hours, :date_start, :date_finish
end
