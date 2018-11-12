# frozen_string_literal: true

class InvitationsController < Devise::InvitationsController
  def invite_resource
    super do |u|
      u.region = current_user.region
      u.save
    end
  end
end
