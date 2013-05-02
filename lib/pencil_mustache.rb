#     ___________________/\___________________
#    /                                        \
#    |                                        |
#
# Do you only need to replace some tokens?  This is all you need (Ruby 1.9+).
#
# License: MIT
module PencilMustache
  class << self
    def render(template, doc)
      template.gsub(/{{.*?}}/, curl(doc))
    end

    private

    def curl(doc)
      curled = {}
      doc.keys.each { |k| curled["{{#{k}}}"] = doc[k] }
      curled
    end
  end
end
