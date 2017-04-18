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

  describe "error messages" do
    context "when the message is defined" do
      it "123 should add the customized message" do
        actual = TestProduct.new(jan_code: 123)
        expect(actual.valid?).to be(false)
        expect(actual.errors[:jan_code].first).to include("must be 8 or 13 digits")
      end
      it "4901277241120 should add the customized message" do
        actual = TestProduct.new(jan_code: 4901277241120)
        expect(actual.valid?).to be(false)
        expect(actual.errors[:jan_code].first).to include("has invalid check-digit")
      end
    end
  end
end
