# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'MovieApp' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  pod 'PureLayout'
  pod 'Alamofire' # framework embedded in IPA file.
  # Pods for MovieApp

  # Utilities
  pod 'SwiftLint' # for better syntax
  
  target 'MovieAppTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'MovieAppUITests' do
    # Pods for testing
  end

end

post_install do |installer|
  # this code for make resolve waring that be noticed by xcode 13.
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
    end
  end
end
