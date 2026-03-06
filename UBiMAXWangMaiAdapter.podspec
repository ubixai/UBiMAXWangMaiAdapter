Pod::Spec.new do |s|
  s.name             = 'UBiMAXWangMaiAdapter'
  s.version          = '7.7.4.30.0'
  s.summary          = 'UBiX聚合Sass SDK WangMai Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXWangMaiAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXWangMaiAdapter.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

  s.dependency 'UBiMAXAdSDK'
  s.dependency 'UBiXAdWangMaiSDK','7.7.4.30.0'
end
