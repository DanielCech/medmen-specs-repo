#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'InstrumentationCrashlytics'
  s.version          = '1.0.2'
  s.summary          = 'Wrapper for Crashlytics'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Wrapper for Firebase/Crashlytics for MedMen apps.
                       DESC

  s.homepage         = 'https://github.com/mmmg/swift-InstrumentationCrashlytics'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DanielCech' => 'daniel.cech@medmen.com' }
  s.source           = { :git => 'git@github.com:mmmg/swift-InstrumentationCrashlytics.git', :tag => s.version.to_s, :branch => 'feature/pod-dependency' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Sources/**/*.swift'

  # s.resource_bundles = {
  #   '${POD_NAME}' => ['${POD_NAME}/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit'
  s.preserve_paths = 'Carthage/Build/iOS/InstrumentationCore.framework'
  s.ios.vendored_frameworks = 'Carthage/Build/iOS/InstrumentationCore.framework'

  s.static_framework = true
  s.dependency 'Fabric',  '~> 1.10.2'
  s.dependency 'Crashlytics', '~> 3.14.0'
  s.dependency 'FirebaseCore', '~> 6.3.2'
  s.dependency 'FirebaseAuth', '~> 6.3.1'
  s.dependency 'FirebaseFirestore', '~> 1.6.1'
  s.dependency 'FirebaseAnalytics'
end
