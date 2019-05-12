require 'ovto'
require 'states/color'

class Foo < Ovto::App
  class State < Ovto::State
    item :color, default: States::Color.new
  end
end
