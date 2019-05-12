require 'ovto'

class Foo < Ovto::App
  class State < Ovto::State
    item :color_index, default: 0
    item :colors, default: %w(red blue green pink yellow gray)
    item :additional_color, default: ''
  end
end
