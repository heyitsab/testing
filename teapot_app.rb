# frozen_string_literal: true

# A BREW / HTCPCP endpoint that returns HTTP 418 I'm a teapot.
# Implements RFC 2324 - Hyper Text Coffee Pot Control Protocol.
# This endpoint allows anonymous access (no authentication required).

class TeapotApp
  # HTTP 418 I'm a teapot (RFC 2324)
  STATUS_IM_A_TEAPOT = 418

  def call(env)
    request_method = env["REQUEST_METHOD"]
    path = env["PATH_INFO"]

    case [request_method, path]
    when ["BREW", "/"], ["POST", "/brew"], ["GET", "/brew"]
      brew_response
    when ["GET", "/"]
      index_response
    else
      not_found_response
    end
  end

  private

  def brew_response
    body = "I'm a teapot\n\nThis server is a teapot, not a coffee machine.\nRef: RFC 2324 - Hyper Text Coffee Pot Control Protocol (HTCPCP/1.0)\n"

    [
      STATUS_IM_A_TEAPOT,
      {
        "content-type" => "text/plain",
        "x-teapot" => "true"
      },
      [body]
    ]
  end

  def index_response
    body = "Welcome to the HTCPCP Teapot API\n\nEndpoints:\n  BREW /        - Attempt to brew coffee (returns 418)\n  POST /brew    - Attempt to brew coffee (returns 418)\n  GET  /brew    - Attempt to brew coffee (returns 418)\n\nAll endpoints allow anonymous access.\n"

    [
      200,
      { "content-type" => "text/plain" },
      [body]
    ]
  end

  def not_found_response
    [
      404,
      { "content-type" => "text/plain" },
      ["Not Found\n"]
    ]
  end
end
