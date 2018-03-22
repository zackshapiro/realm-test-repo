source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '11.0'
inhibit_all_warnings!
use_frameworks!

workspace 'realm-migration-test'

target 'realm-migration-test' do
  pod 'RealmSwift', '~> 3.3.0'
end

post_install do |installer|
  installer.pods_project.targets.each  do |target|
      target.build_configurations.each  do |config|
        config.build_settings['SWIFT_VERSION'] = '4.0'
        config.build_settings['PROVISIONING_PROFILE_SPECIFIER'] = ''
      end
   end
end
