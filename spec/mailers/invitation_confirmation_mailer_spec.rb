require "rails_helper"

RSpec.describe PurchaseConfirmationMailer, :type => :mailer do

  before do
    @product = Fabricate(:product)
    customer = Fabricate(:customer_with_orders)
    @payment = customer.payments.first

    @email = PurchaseConfirmationMailer.receipt_email(@product, @payment, customer).deliver_now
  end

  it 'purchase confirmation mail has from address' do    
    expect(@email.from).to eq(['support@zepho.com'])
  end

  it 'purchase confirmation mail has email subject' do
    expect(@email.subject).to eq('[RubyPlus] Purchase Confirmation')
  end

end
