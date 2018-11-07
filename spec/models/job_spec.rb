RSpec.describe Job, type: :model do
  describe 'DB table' do
  it { is_expected.to have_db_column :profession }
  it { is_expected.to have_db_column :hospital }
  it { is_expected.to have_db_column :department }
  it { is_expected.to have_db_column :license }
  it { is_expected.to have_db_column :caretype }
  it { is_expected.to have_db_column :working_hours }
  it { is_expected.to have_db_column :date_start }
  it { is_expected.to have_db_column :date_finish }
end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :profession }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:job)).to be_valid
    end
  end
end