RSpec.describe Staffco, type: :model do
  
  describe "db columns" do 
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :email }
  end
  
  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:staffco)).to be_valid
    end
  end

end
