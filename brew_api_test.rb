require "minitest/autorun"
require "rack/test"
require_relative "brew_api"

class BrewAPITest < Minitest::Test
  include Rack::Test::Methods

  def app
    BrewAPI
  end

  def test_brew_returns_418
    request "/", method: "BREW"
    assert_equal 418, last_response.status
    assert_equal "I'm a teapot", last_response.body
  end

  def test_get_returns_418
    get "/"
    assert_equal 418, last_response.status
    assert_equal "I'm a teapot", last_response.body
  end

  def test_brew_requires_no_authentication
    # Verify anonymous access — no auth headers needed
    request "/", method: "BREW"
    assert_equal 418, last_response.status
    refute last_response.headers.key?("WWW-Authenticate")
  end

  def test_response_content_type_is_text
    get "/"
    assert_includes last_response.content_type, "text/plain"
  end
end
