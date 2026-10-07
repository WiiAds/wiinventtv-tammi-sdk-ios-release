Pod::Spec.new do |spec|

  spec.name         = "WITMSDK"
  spec.version      = ENV['LIB_VERSION'] || "0.0.1"
  spec.summary      = "Wiinvent TM Sdk iOS"

  spec.description  = <<-DESC
                        Wiinvent TM SDK iOS
                   DESC

  spec.homepage     = "https://wiinvent.tv"
  spec.license      = { :type => 'Copyright', :text => 'Copyright (C) 2022 by Wiinvent TV, Inc' }
  spec.author       = { "Wiinvent" => "support@wiinvent.tv" }

  spec.vendored_frameworks = "WITMSDK.xcframework"
  spec.platform = :ios
  spec.ios.deployment_target = "12.0"
  spec.swift_version = ["4.0", "4.2", "5.0"]
  spec.source = { :git => "https://github.com/WiiAds/wiinventtv-tammi-sdk-ios-release.git", :tag => "v#{spec.version.to_s}" }
  spec.pod_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'ONLY_ACTIVE_ARCH' => 'NO'}
  spec.user_target_xcconfig = {'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'ONLY_ACTIVE_ARCH' => 'NO'}

  spec.dependency 'GoogleAds-IMA-iOS-SDK', '3.18.4'
  spec.dependency 'TokenGenerator'

  spec.frameworks = 'AVFoundation', 'UIKit', 'WebKit'
end
