require 'spec_helper'

RSpec.describe SixSaferpay::SixTransaction::Capture do

  subject { SpinningWheel.create('six_transaction_capture') }

  let(:url) { '/Payment/v1/Transaction/Capture' }
  let(:response_class) { SixSaferpay::SixTransaction::CaptureResponse }

  let(:hash) {
    {
      request_header: subject.request_header.to_h,
      transaction_reference: subject.transaction_reference.to_h,
      amount: subject.amount.to_h,
      billpay: subject.billpay.to_h,
      pending_notification: subject.pending_notification.to_h,
      marketplace: subject.marketplace.to_h,
      mastercard_issuer_installments: subject.mastercard_issuer_installments.to_h
    }
  }

  describe 'to_hash' do
    it 'returns the hash representation of the six transaction capture' do
      expect(subject.to_hash).to eq(hash)
    end
  end

  describe 'to_json' do
    it { expect(subject.to_json).to eq(hash.to_json) }
  end

  describe 'url' do
    it { expect(subject.url).to eq(url) }
  end

  describe 'response_class' do
    it { expect(subject.response_class).to eq(response_class) }
  end
end
