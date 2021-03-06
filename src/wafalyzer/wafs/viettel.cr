module Wafalyzer
  class Waf::Viettel < Waf
    product "Viettel WAF (Cloudrity)"

    PATTERN =
      Regex.union(
        # https://github.com/0xInfection/Awesome-WAF
        /<title>access.denied(...)?viettel.waf<\/title>/i,
        /viettel.waf.system/i,
        /(http(s).\/\/)?cloudrity.com(.vn)?/
      )

    matches_body PATTERN
  end
end
