require 'rails_helper'

RSpec.describe JobPolicy do
  let(:stockholm) { create(:region, name: 'Stockholm') }
  let(:gothenburg) { create(:region, name: 'Göteborg') }
  let(:rsc_sthlm) { create(:user, region: stockholm) }
  let(:rsc_gbg) { create(:user, region: gothenburg) }
  let(:doctor) { create(:job, profession: 'Doctor', region: stockholm) }
  let(:nurse) { create(:job, profession: 'Nurse', region: gothenburg) }

  context "'rsc_sthlm' asks for a collection of jobs" do
    let(:resolved_scope) do
      described_class::Scope.new(rsc_sthlm, Job.all).resolve
    end

    it 'collection includes jobs in Stockholm' do
      expect(resolved_scope).to include doctor
    end

    it 'collection excludes jobs in Gothenburg' do
      expect(resolved_scope).not_to include nurse
    end
  end

  context "'rsc_gbg' asks for a collection of jobs" do
    let(:resolved_scope) do
      described_class::Scope.new(rsc_gbg, Job.all).resolve
    end

    it 'collection includes jobs in Gothenburg' do
      expect(resolved_scope).to include nurse
    end

    it 'collection excludes jobs in Stockholm' do
      expect(resolved_scope).not_to include doctor
    end
  end
end
