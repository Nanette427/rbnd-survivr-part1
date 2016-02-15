class String

	# Create all colors method on the fly
  def self.create_colors
  	colors_map.each do |color, code|
      define_method(color) do |argument|
		    "\e[#{code}m#{argument}\e[0m"
      end
    end
  end

  # Returns array of all colors available
  def self.colors
  	colors_map.keys
  end

  # Print text to test each color method
  def self.sample_colors
  	colors.each do |sym_color|
      puts "This is color " + sym_color.to_s.send(sym_color,sym_color)
		end
  end

  #1 Retuns a hash with all colors available
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



