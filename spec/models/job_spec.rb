RSpec.describe Job, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :profession }
    it { is_expected.to have_db_column :care_type }
    it { is_expected.to have_db_column :department }
    it { is_expected.to have_db_column :license }
    it { is_expected.to have_db_column :working_hours }
    it { is_expected.to have_db_column :date_start }
    it { is_expected.to have_db_column :date_finish }
    it { is_expected.to have_db_column :requirements }
    it { is_expected.to have_db_column :other_requirements }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :years_experience }
    it { is_expected.to have_db_column :application_deadline }
    it { is_expected.to have_db_column :reference_number }
    it { is_expected.to have_db_column :accomodation_arrangement }
    it { is_expected.to have_db_column :accomodation_budget }
    it { is_expected.to have_db_column :accomodation_comment }
    it { is_expected.to have_db_column :travel_arranged }
    it { is_expected.to have_db_column :travel_budget }
    it { is_expected.to have_db_column :travel_comment }
    it { is_expected.to have_db_column :other_pay }
    it { is_expected.to have_db_column :other_comment }
    it { is_expected.to have_db_column :other_budget }
    it { is_expected.to have_db_column :scope }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :profession }
    it { is_expected.to validate_presence_of :department }
    it { is_expected.to validate_presence_of :care_type }
    it { is_expected.to validate_presence_of :scope }
    it { is_expected.to validate_presence_of :working_hours }
    it { is_expected.to validate_presence_of :date_start }
    it { is_expected.to validate_presence_of :date_finish }
    it { is_expected.to validate_presence_of :requirements }
    it { is_expected.to validate_presence_of :other_requirements }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :years_experience }
    it { is_expected.to validate_presence_of :application_deadline }
    it { is_expected.to validate_presence_of :reference_number }
    it { is_expected.to validate_presence_of :license }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:job)).to be_valid
    end
  end
end