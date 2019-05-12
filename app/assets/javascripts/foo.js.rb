require 'ovto'

class Foo < Ovto::App
  def setup
    actions.update_rondom_color
  end
end
