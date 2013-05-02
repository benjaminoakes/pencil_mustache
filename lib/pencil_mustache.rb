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
