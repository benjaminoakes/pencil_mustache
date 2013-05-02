require 'minitest/spec'
require 'minitest/autorun'
require_relative '../lib/pencil_mustache'

describe PencilMustache do
  describe '.render' do
    it 'replaces tokens within mustaches' do
      template = 'Say something loud!  Maybe he\'ll use it in his examples!  Like what?  Like "{{adjective}} {{noun}}"?'
      doc = { :adjective => 'chunky',
              :noun => 'bacon' }

      assert_equal('Say something loud!  Maybe he\'ll use it in his examples!  Like what?  Like "chunky bacon"?', PencilMustache.render(template, doc))
    end
  end
end
