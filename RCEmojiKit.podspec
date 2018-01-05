#
# Be sure to run `pod lib lint RCEmojiKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RCEmojiKit'
  s.version          = '0.1.0'
  s.summary          = 'Rocket.Chat\'s iOS toolkit for dealing with emojis'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'This is Rocket.Chat\'s toolkit for dealing with emojis.

It contains code for common emoji-related tasks like translating emoji shortnames into their unicode representation (eg. :cowboy: -> 🤠.) and UI components for picking emojis, reactions and others'

  s.homepage         = 'https://github.com/cardoso/RCEmojiKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'cardoso' => 'matheus@cardo.so' }
  s.source           = { :git => 'https://github.com/cardoso/RCEmojiKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RCEmojiKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RCEmojiKit' => ['RCEmojiKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
