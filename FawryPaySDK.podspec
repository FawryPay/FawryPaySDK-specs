Pod::Spec.new do |s|
  s.name             = 'FawryPaySDK'
  s.version          = '2.0.15'
  s.summary          = 'FawryPaySDK is an online payment form Fawry.'

  s.description      = <<-DESC
	This is the Anonymous flow from Fawry to our clients.
	Now you can use our framework to pay using Fawry.
	Hope this will be as expected. Enjoy.
                       DESC

  s.homepage         = 'https://www.google.com'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
                   	Copyright 2022 Mark Hanna @ Fawry.
                   	Permission is granted to No body.
                	 LICENSE
			}
  s.author           = { 'mark' => 'mark.hanna@fawry.com' }

  s.swift_version = '5.0'
  s.ios.deployment_target  = '11.0'

  s.source           = { :git => 'https://github.com/FawryPay/FawryPaySDK.git', :tag => s.version.to_s }

  s.vendored_frameworks = 'FawryPaySDK.xcframework'
  
  s.requires_arc = true

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency 'Alamofire', '~> 5.10.2'
  # s.dependency 'SDWebImage', '~> 5.21.0'
  s.dependency 'IQKeyboardManagerSwift', '~> 6.5.16'
  # s.dependency 'SwiftMessages', '~> 9.0.6'
  # s.dependency 'SVProgressHUD', '~> 2.2.5'
  # s.dependency 'RxSwift', '~> 6.9.0'
  # s.dependency 'MBRadioButton', '~> 1.4'

end
