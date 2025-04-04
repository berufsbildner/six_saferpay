module SixSaferpay
  class Liability
    attr_accessor(:liability_shift,
      :liable_entity,
      :three_ds,
      :fraud_free,
      :in_psd2_scope)

    def initialize(liability_shift:,
      liable_entity:,
      three_ds: nil,
      fraud_free: nil,
      in_psd2_scope: nil)
      @liability_shift = liability_shift
      @liable_entity = liable_entity
      @three_ds = SixSaferpay::ThreeDs.new(**three_ds.to_h) if three_ds
      @fraud_free = SixSaferpay::FraudFree.new(**fraud_free.to_h) if fraud_free
      @in_psd2_scope = in_psd2_scope
    end

    def to_hash
      hash = {}
      hash.merge!(liability_shift: @liability_shift)
      hash.merge!(liable_entity: @liable_entity)
      hash.merge!(three_ds: @three_ds.to_h) if @three_ds
      hash.merge!(fraud_free: @fraud_free.to_h) if @fraud_free
      hash
    end
    alias_method :to_h, :to_hash
  end
end
