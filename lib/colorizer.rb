class String

  # Use method missing to call create_colors
  # if needed
  def method_missing(name, *args)
    unless String.colors.include?(name.to_s)
      super unless String.colors_map[name]
      String.create_colors
      self.send(name)
    else
      super
    end
  end

  # Redefine respond_to?
  def respond_to?(name, include_private = false)
    String.colors_map[name] || super
  end

  # Create all colors method on the fly
  def self.create_colors
    colors_map.each do |color, code|
      define_method(color.to_sym) { "\e[#{code}m#{self}\e[0m" }
    end
  end

  # Returns array of all colors available
  def self.colors
    colors_map.keys
  end

  # Print text to test each color method
  def self.sample_colors
    colors.each do |sym_color|
      color = sym_color.to_s
      puts "This is color " + color.send(sym_color)
    end
  end

  # Retuns a hash with all colors available
  # (keys) and their code (values)
  def self.colors_map
    {
      :black         => 30,
      :red           => 31,
      :green         => 32,
      :yellow        => 33,
      :blue          => 34,
      :magenta       => 35,
      :cyan          => 36,
      :light_gray    => 37,
      :dark_gray     => 90,
      :light_red     => 91,
      :light_green   => 92,
      :light_yellow  => 93,
      :light_blue    => 94,
      :light_magenta => 95,
      :light_cyan    => 96,
      :white         => 97,
    }
  end
end