SpinningWheel.define do
  fabric name: 'card_form', class_name: 'SixSaferpay::CardForm' do
    holder_name { 'MANDATORY' }
    verification_code { 'MANDATORY' }
  end
end
