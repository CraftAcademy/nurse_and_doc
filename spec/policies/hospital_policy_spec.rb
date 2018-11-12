# frozen_string_literal: true

RSpec.describe HospitalPolicy do
  let(:stockholm) { create(:region, name: 'Stockholm') }
  let(:gothenburg) { create(:region, name: 'Göteborg') }
  let(:rsc_sthlm) { create(:user, region: stockholm) }
  let(:rsc_gbg) { create(:user, region: gothenburg) }
  let(:karolinska) { create(:hospital, name: 'Karolinska', region: stockholm) }
  let(:sahlgrenska) { create(:hospital, name: 'Sahlgrenska', region: gothenburg) }

  context "'rsc_sthlm' asks for collection of hospitals" do
    let(:resolved_scope) do
      described_class::Scope.new(rsc_sthlm, Hospital.all).resolve
    end

    it 'collection includes hospitals in Stockholm' do
      expect(resolved_scope).to include karolinska
    end

    it 'collection excludes hospitals in Gothenburg' do
      expect(resolved_scope).not_to include sahlgrenska
    end
  end

  context "'rsc_gbg' asks for collection of hospitals" do
    let(:resolved_scope) do
      described_class::Scope.new(rsc_gbg, Hospital.all).resolve
    end

    it 'collection includes hospitals in Gothenburg' do
      expect(resolved_scope).to include sahlgrenska
    end

    it 'collection excludes hospitals in Stockholm' do
      expect(resolved_scope).not_to include karolinska
    end
  end
end
