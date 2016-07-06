require 'minitest/autorun'
require 'pp'

require_relative 'renderer'
require_relative 'bto_adapter'

class BTOAdapterTest < Minitest::Test
  def test_bto_adapter
    bto = BritishTextObject.new('hello', 25.4, :blue)
    adapter = BritishTextObjectAdapter.new(bto)

    assert_equal 'hello', adapter.text
    assert_equal 1, adapter.size_inches
    assert_equal :blue, adapter.color
  end

  def test_renderer
    bto = BritishTextObject.new('hello', 25.4, :blue)
    adapter = BritishTextObjectAdapter.new(bto)

    r = Renderer.new
    assert_equal 'hello/1.0/blue' , r.render(adapter)
  end
end
