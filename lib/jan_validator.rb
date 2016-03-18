require "jan_validator/version"
require "jan"

class JanValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if (value.nil? && options[:allow_nil]) || (value.blank? && options[:allow_blank])
    return record.errors.add(attribute, "can't be blank") if value.blank?
    record.errors.add(attribute, "is invalid length") unless Jan::Validator.validate_size(value)
    record.errors.add(attribute, "is invalid check-digit") unless Jan::Validator.validate_check_digit(value)
  end
end
