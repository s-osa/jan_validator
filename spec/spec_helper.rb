project_root = File.join(File.dirname(__FILE__), '..')
$: << project_root

Dir[File.join(File.dirname(__FILE__), "support", "*")].each {|f| require f }

require 'active_model'
require 'lib/jan_validator'

I18n.load_path += Dir[File.expand_path(File.join(File.dirname(__FILE__), '../config/locales', '*.yml')).to_s]

class TestModel
  include ActiveModel::Validations

  def initialize(attributes={})
    @attributes = attributes
  end

  def read_attribute_for_validation(key)
    @attributes[key]
  end
end
