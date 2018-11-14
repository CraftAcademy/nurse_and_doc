RSpec.describe StaffcoPolicy do
  let(:stockholm) { create(:region, name: 'Stockholm') }
  let(:gothenburg) { create(:region, name: 'Göteborg') }
  let(:rsc_sthlm) { create(:user, region: stockholm) }
  let(:rsc_gbg) { create(:user, region: gothenburg) }
  let(:trib_ab) { create(:staffco, name: 'Trib AB', region: stockholm) }
  let(:adecco) { create(:staffco, name: 'Adecco', region: gothenburg) }

  context "'rsc_sthlm' asks for collection of staffing companies" do
    let(:resolved_scope) do
      described_class::Scope.new(rsc_sthlm, Staffco.all).resolve
    end

    it 'collection includes staffing companies in Stockholm' do
      expect(resolved_scope).to include trib_ab
    end

    it 'collection excludes staffing companies in Gothenburg' do
      expect(resolved_scope).not_to include adecco
    end
  end

  context "'rsc_gbg' asks for collection of staffing companies" do
    let(:resolved_scope) do
      described_class::Scope.new(rsc_gbg, Staffco.all).resolve
    end

    it 'collection includes staffing companies in Gothenburg' do
      expect(resolved_scope).to include adecco
    end

    it 'collection excludes staffing companies in Stockholm' do
      expect(resolved_scope).not_to include trib_ab
    end
  end
end
