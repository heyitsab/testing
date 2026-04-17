require "sinatra/base"

class BrewAPI < Sinatra::Base
  # Disable protection and sessions for anonymous access
  disable :protection
  set :sessions, false
  set :host_authorization, { permitted_hosts: [] }

  # BREW method handler per RFC 2324 (HTCPCP)
  # Anonymous access — no authentication required
  route "BREW", "/" do
    status 418
    content_type :text
    "I'm a teapot"
  end

  # Also respond to GET for convenience
  get "/" do
    status 418
    content_type :text
    "I'm a teapot"
  end
end
