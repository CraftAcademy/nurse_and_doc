require 'rails_helper'

RSpec.describe Department, type: :model do
  
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
  end
  
end
