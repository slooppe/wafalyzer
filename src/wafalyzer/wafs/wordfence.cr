module Wafalyzer
  class Waf::Wordfence < Waf
    product "Wordfence (Feedjit)"

    PATTERN =
      Regex.union(
        /generated.by.wordfence/i,
        /your.access.to.this.site.has.been.limited/i,
        /.>wordfence<./i,
      )

    matches_body PATTERN
  end
end
