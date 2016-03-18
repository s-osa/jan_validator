require "spec_helper"

class TestProduct < TestModel
  validates :jan_code, jan: true
end

class AllowNilTestProduct < TestModel
  validates :jan_code,
    allow_nil: true,
    jan: true
end

class AllowBlankTestProduct < TestModel
  validates :jan_code,
    allow_blank: true,
    jan: true
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
      it "Model with 'allow_nil' should be valid" do
        actual = AllowNilTestProduct.new(jan_code: nil)
        expect(actual).to be_valid
      end
      it "Model with 'allow_blank' should be valid" do
        actual = AllowBlankTestProduct.new(jan_code: "")
        expect(actual).to be_valid
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
