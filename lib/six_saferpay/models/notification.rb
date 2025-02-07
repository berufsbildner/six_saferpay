module SixSaferpay
  class Notification

    attr_accessor(:merchant_emails,
                  :payer_email,
                  :success_notify_url,
                  :fail_notify_url
                 )

    def initialize(merchant_emails: nil, payer_email: nil, success_notify_url: nil, fail_notify_url: nil)
      @merchant_emails = merchant_emails
      @payer_email = payer_email
      @success_notify_url = success_notify_url
      @fail_notify_url = fail_notify_url
    end

    def to_hash
      hash = Hash.new
      hash.merge!(merchant_emails: @merchant_emails) if @merchant_emails
      hash.merge!(payer_email: @payer_email) if @payer_email
      hash.merge!(success_notify_url: @success_notify_url) if @success_notify_url
      hash.merge!(fail_notify_url: @fail_notify_url) if @fail_notify_url
      hash
    end
    alias_method :to_h, :to_hash

  end
end

