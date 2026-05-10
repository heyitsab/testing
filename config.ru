# frozen_string_literal: true

require_relative "teapot_app"

# No authentication middleware - anonymous access is allowed.
run TeapotApp.new
