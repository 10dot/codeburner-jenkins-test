ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)

require "rails/test_help"

# Improved Minitest output (color and progress bar)
require "minitest/reporters"
Minitest::Reporters.use!(Minitest::Reporters::ProgressReporter.new,ENV,Minitest.backtrace_filter)

class ActiveSupport::TestCase
  fixtures :all
end
