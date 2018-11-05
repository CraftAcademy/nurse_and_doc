RSpec.describe Hospital, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
  end

  describe 'Validations' do
    it { should validate_uniqueness_of(:name) }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:hospital)).to be_valid
    end
  end
end