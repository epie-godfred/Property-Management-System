require 'codacy-coverage'
require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    Codacy::Formatter
])

SimpleCov.configure do
  add_filter "app/permissions"
  add_filter "app/inputs"
  add_filter "app/validations"
  add_filter "app/models/concerns/"
  add_group "Services", "app/services"
end