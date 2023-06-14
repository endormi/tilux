require_relative '../tools/tilux/color_names'

RSpec.describe ANSIColors do
  let(:string) { 'Test String' }

  describe '#color' do
    it 'returns the string wrapped with the specified color code' do
      colored_string = string.color(31)

      expect(colored_string).to eq("\e[31mTest String\e[0m")
    end
  end

  describe '#light_color' do
    it 'returns the string wrapped with the specified light color code' do
      colored_string = string.light_color(31)

      expect(colored_string).to eq("\e[1;31mTest String\e[0m")
    end
  end

  describe '#red' do
    it 'returns the string wrapped with the red color code' do
      colored_string = string.red

      expect(colored_string).to eq("\e[31mTest String\e[0m")
    end
  end

  describe '#light_red' do
    it 'returns the string wrapped with the light red color code' do
      colored_string = string.light_red

      expect(colored_string).to eq("\e[1;31mTest String\e[0m")
    end
  end

  describe '#green' do
    it 'returns the string wrapped with the green color code' do
      colored_string = string.green

      expect(colored_string).to eq("\e[32mTest String\e[0m")
    end
  end

  describe '#light_green' do
    it 'returns the string wrapped with the light green color code' do
      colored_string = string.light_green

      expect(colored_string).to eq("\e[1;32mTest String\e[0m")
    end
  end

  describe '#yellow' do
    it 'returns the string wrapped with the yellow color code' do
      colored_string = string.yellow

      expect(colored_string).to eq("\e[33mTest String\e[0m")
    end
  end

  describe '#light_yellow' do
    it 'returns the string wrapped with the light yellow color code' do
      colored_string = string.light_yellow

      expect(colored_string).to eq("\e[1;33mTest String\e[0m")
    end
  end

  describe '#blue' do
    it 'returns the string wrapped with the blue color code' do
      colored_string = string.blue

      expect(colored_string).to eq("\e[34mTest String\e[0m")
    end
  end

  describe '#light_blue' do
    it 'returns the string wrapped with the light blue color code' do
      colored_string = string.light_blue

      expect(colored_string).to eq("\e[1;34mTest String\e[0m")
    end
  end

  describe '#white' do
    it 'returns the string wrapped with the white color code' do
      colored_string = string.white

      expect(colored_string).to eq("\e[1;37mTest String\e[0m")
    end
  end
end
