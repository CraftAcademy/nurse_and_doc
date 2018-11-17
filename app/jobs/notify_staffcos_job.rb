require 'rest-client'

class NotifyStaffcosJob < ApplicationJob
  queue_as :default

  def perform(*args)
    staff_cos = args[1]
    payload = args[0].to_json
    staff_cos.each do |staff_co|
      RestClient.post(staff_co.webhook, payload, headers={}) if staff_co.webhook
    end
  end
end
