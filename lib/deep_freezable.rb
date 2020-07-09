module DeepFreezable
  def deep_freeze(array_or_hash)
    case array_or_hash
    when Array
      array_or_hash.freeze.each(&:freeze)
    when Hash
      array_or_hash.freeze.each do |k, v|
        k.freeze
        v.freeze
      end
    end
  end
end
