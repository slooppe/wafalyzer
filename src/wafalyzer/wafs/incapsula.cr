module Wafalyzer
  class Waf::Incapsula < Waf
    product "Incapsula Web Application Firewall (Incapsula/Imperva)"

    PATTERN =
      Regex.union(
        /incap_ses|visid_incap/i,
        /incapsula/i,
        /incapsula.incident.id/i,
      )

    matches_header %w(Set-Cookie X-CDN), PATTERN
    matches_body PATTERN
  end
end
