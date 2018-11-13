class Job < ApplicationRecord
    belongs_to :hospital 
    belongs_to :region
    validates_presence_of :profession, 
                          :department, 
                          :license, 
                          :care_type, 
                          :scope, 
                          :working_hours, 
                          :date_start, 
                          :date_finish,
                          :requirements,
                          :other_requirements,
                          :description,
                          :years_experience,
                          :application_deadline,
                          :reference_number

end
