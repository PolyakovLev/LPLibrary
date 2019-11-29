#
#  Be sure to run `pod spec lint LEVPOLLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "LEVPOLLibrary"
  spec.version      = "1.0.2"
  spec.summary      = "Simple custom swift Library"
  spec.description  = <<-DESC
  swift library written for raiffeisen ios school
                   DESC
  spec.homepage     = "https://github.com/PolyakovLev/LPLibrary"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Lev Polyakov" => "levpolyakov@list.ru" }
  spec.source       = { :git => "https://github.com/PolyakovLev/LPLibrary.git", :tag => "#{spec.version}" }
  spec.source_files = "LEVPOLLibrary/**/*{m,h,swift}"
  spec.dependency "LDAUsefulTools"
  spec.swift_versions = '5.0'
  spec.ios.deployment_target  = '13.0'

end
