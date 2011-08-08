# -*- coding: utf-8 -*-
class Menu
  def initialize(list = nil)
    @menu = list || YAML.load_file('./menu.yml')
    @selected_menu
  end

  def pick_up
    @selected_menu ||= @menu.sample
  end

  def to_vertical
    @selected_menu || pick_up
    s = @selected_menu.gsub('ー', '|')
    s.split('').join('<br />')
  end
end
