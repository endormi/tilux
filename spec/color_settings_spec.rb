require 'yaml'
require_relative '../tools/tilux/color_settings'

PATH = '/mock/path'.freeze

RSpec.describe ColorSettings do
  describe '.load_colors' do
    context 'when custom settings file exists' do
      before do
        allow(File).to receive(:exist?).with("#{PATH}/.custom_settings.yaml").and_return(true)
      end

      it 'loads custom colors from the file' do
        allow(YAML).to receive(:load_file)
          .with("#{PATH}/.custom_settings.yaml")
          .and_return('custom' => { 'header_color' => 'blue' })
        expect(ColorSettings.load_colors).to include('header_color' => 'blue')
      end

      it 'falls back to default colors if not specified in the file' do
        allow(YAML).to receive(:load_file).with("#{PATH}/.custom_settings.yaml").and_return('custom' => {})
        expect(ColorSettings.load_colors['undefined_color']).to eq(ColorSettings::DEFAULT_COLORS['undefined_color'])
      end
    end

    context 'when custom settings file does not exist' do
      before do
        allow(File).to receive(:exist?).with("#{PATH}/.custom_settings.yaml").and_return(false)
      end

      it 'returns default colors' do
        expect(ColorSettings.load_colors).to eq(ColorSettings::DEFAULT_COLORS)
      end
    end
  end
end
