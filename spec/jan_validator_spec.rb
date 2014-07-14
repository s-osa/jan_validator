require "spec_helper"

class TestProduct < TestModel
  validates :jan_code, jan: true
end

describe JanValidator do
  describe "validation" do
    context "valid codes" do
      valid_codes.each do |code|
        it "#{code} should be valid" do
          actual = TestProduct.new(jan_code: code)
          expect(actual).to be_valid
        end
      end
    end

    context "invalid codes" do
      invalid_codes.each do |code|
        it "#{code} should be invalid" do
          actual = TestProduct.new(jan_code: code)
          expect(actual).to be_invalid
        end
      end
    end
  end
end
