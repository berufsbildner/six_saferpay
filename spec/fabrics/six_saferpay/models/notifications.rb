SpinningWheel.define do
  fabric name: 'notification', class_name: 'SixSaferpay::Notification' do
    merchant_emails { ['merchant@saferpay.com'] }
    payer_email { 'payer@saferpay.com' }
    success_notify_url { 'https://merchanthost/notify' }
  end
end
