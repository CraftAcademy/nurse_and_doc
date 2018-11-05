RSpec.describe Job, type: :model do
  describe 'DB table' do
  it { is_expected.to have_db_column :name }
  it { is_expected.to have_db_column :profession }
  it { is_expected.to have_db_column :scope }
end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:job)).to be_valid
    end
  end
end