#
# Be sure to run `pod lib lint SwiftNavigator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftNavigator'
  s.version          = '1.0.0'
  s.summary          = 'A small, 0 dependencies navigation library for iOS applications.'


  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Mauricio Cousillas/SwiftNavigator'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mauricio Cousillas' => 'cousillas806@gmail.com' }
  s.source           = { :git => 'https://github.com/Mauricio Cousillas/SwiftNavigator.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'SwiftNavigator/Classes/**/*'
end
