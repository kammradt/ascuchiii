# frozen_string_literal: true

require 'artii'
require 'asciiart'
require 'optparse'

module Ascuchiii
  def self.words
    [
      'P A U L O',
      'C U C H I',
      'P A U L O  C U C H I',
      'L A G E S'
    ]
  end

  def self.images
    [
      'default-cuchi-with-hat.jpeg'
    ]
  end

  def self.url
    # It will be kinda tricky to make it work with images bundled together with the gem
    # so let's just use a static one hosted at the repo
    'https://github.com/kammradt/ascuchiii/blob/master/lib/images'
  end

  def self.parse_img_args
    default_image_args = {
      width: 50,
      color: true
    }

    OptionParser.new do |parser|
      parser.on('-w [WIDTH]', '--width [WIDTH]', 'Cuchi image WIDTH. Default: 50. Ex ascuchiii -w 200', Integer)

      parser.on('-c [COLOR]', '--color [COLOR]',
                'Should render with image with colors. Default: true. Ex: ascuchiii -c (with color/true) | ascuchiii -c false (without color/false)') do |color|

        # `color.nil?` verifies if the input is just `-X` (considered true).
        # If -X has an argument, convert it to bool
        default_image_args[:color] = color.nil? || color.to_s == 'true'
      end
    end.parse!(into: default_image_args)

    default_image_args
  end

  def self.show
    Artii::Base.new.asciify(words.sample)

    AsciiArt.new("#{url}/#{images.sample}").to_ascii_art(parse_img_args)
  end
end
