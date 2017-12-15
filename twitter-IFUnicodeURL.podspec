#
#  Be sure to run `pod spec lint IFUnicodeURL.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  name = "twitter-IFUnicodeURL"
  version = "1.0.1"
  url = "https://github.com/dlamacchia/twitter-IFUnicodeURL"
  git_url = "#{url}.git"
  tag = "v#{version}"
  s.name         = name
  s.version      = version
  s.summary      = "IDN support for twitter-text"
  s.description  = <<-DESC
Embedded fork of IFUnicodeURL used for punycode support in twitter-text.
                   DESC
  s.homepage = "#{url}/tree/#{tag}/IFUnicodeURL"
  s.license      = { :type => 'Copyright', :file => 'IFUnicodeURL-LICENSE.txt' }
  s.author             = { "Karelia Software" => "email@address.com" }
  s.source = { :git => "#{url}.git", :tag => tag }
  s.source_files = "IFUnicodeURL/**/*.{c,h,m}", "IFUnicodeURL/*.{c,h,m}"
  s.exclude_files = "Tests/*.{h,m,c}"
  s.private_header_files = "IFUnicodeURL/IDNSDK/**/*.h"
  s.public_header_files = "IFUnicodeURL/IFUnicodeURL.h", "IFUnicodeURL/NSURL+IFUnicodeURL.h"
  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.9"
  s.frameworks = 'SystemConfiguration'
  s.ios.framework  = 'UIKit'
  s.osx.framework = 'AppKit'
end
