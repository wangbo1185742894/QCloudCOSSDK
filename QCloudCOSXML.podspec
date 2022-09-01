Pod::Spec.new do |s|
  s.name             = "QCloudCOSXML"
s.version              = "5.5.3"
  s.summary          = "QCloudCOSXML 腾讯云iOS-SDK组件"

  s.homepage         = "https://cloud.tencent.com/"
  s.license          = 'MIT'
  s.author           = { "QCloud Terminal Team" => "QCloudTerminalTeam" }
  s.source           = { :git => "https://github.com/wangbo1185742894/QCloudCOSSDK.git", :tag => s.version.to_s }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.deployment_target = '8.0'
  s.source_files = 'QCloudCOSXML/Classes/**/*'
  s.dependency "QCloudCore",'5.5.3'
  s.static_framework = true

  s.subspec 'Transfer' do |sbt|
    sbt.source_files = 'QCloudCOSXML/Classes/Transfer/**/*','QCloudCOSXML/Classes/Base/*'
    sbt.dependency "QCloudCore",'5.5.3'
 #   sbt.static_framework=true
  end
end
