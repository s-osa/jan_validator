require "active_model/validations"
require "jan"

module ActiveModel
  module Validations
    class JanValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        record.errors.add(attribute, :invalid_length) unless Jan::Validator.validate_size(value)
        record.errors.add(attribute, :invalid_check_digit) unless Jan::Validator.validate_check_digit(value)
      end
    end
  end
end
