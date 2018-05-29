Pod::Spec.new do |s|
  s.name             = "TokenTest"
  s.version          = "3.1"
  s.summary          = "Zip and unzip files in Swift."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
                      A Swift framework for zipping and unzipping files. Simple and quick to use. Built on top of minizip.
                     DESC

  s.homepage         = "https://github.com/marmelroy/Zip"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Roy Marmelstein" => "marmelroy@gmail.com" }
  s.source           = { :git => "https://github.com/marmelroy/Zip.git" }
  s.social_media_url   = "http://twitter.com/marmelroy"

  s.ios.deployment_target = '8.0'

  s.source_files = 'Sources/*.{swift}', 'Sources/*.{c,h}'
  s.public_header_files = 'Sources/*.h'
  s.pod_target_xcconfig = {'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/TokenTest/Sources/**' }
  s.xcconfig = {'SWIFT_INCLUDE_PATHS' => '$(PODSROOT)/Sources/**' }
  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.libraries = 'z'
  s.preserve_path  = 'Sources/module.modulemap'
  # s.preserve_paths = 'Sources/*.{inc}'
  # s.module_map = 'Sources/module.modulemap'

  # s.dependency 'AFNetworking', '~> 2.3'
end