#!/usr/bin/ruby

require 'yaml'

# ColorSettings manages color customization settings for Tilux.
class ColorSettings
  DEFAULT_COLORS = {
    'header_color' => 'red',
    'version_text_color' => 'light_white',
    'version_number_color' => 'light_blue',
    'author_color' => 'light_white',
    'link_color' => 'light_white',
    'prompt_text_color' => 'light_white',
    'prompt_color' => 'light_yellow'
  }.freeze

  def self.load_colors
    custom_settings_file = File.join(PATH, '.custom_settings.yaml')

    if File.exist?(custom_settings_file)
      config = YAML.load_file(custom_settings_file)['custom'] || {}
      colors = %w[header_color version_text_color version_number_color author_color link_color
                  prompt_text_color prompt_color]
      result_colors = {}

      colors.each do |color|
        result_colors[color] = config.fetch(color, DEFAULT_COLORS[color])
      end

      result_colors
    else
      DEFAULT_COLORS
    end
  end
end
