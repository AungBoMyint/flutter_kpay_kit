Pod::Spec.new do |s|
  s.name             = 'flutter_kpay_kit'
  s.version          = '0.0.5'
  s.summary          = 'A new Flutter project.'
  s.description      = <<-DESC
A new Flutter project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Include the KBZPayAPPPay.framework
  s.vendored_frameworks = 'Frameworks/KBZPayAPPPay.framework'

  # Flutter.framework does not contain an i386 slice.
  #s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.pod_target_xcconfig = {
  'DEFINES_MODULE' => 'YES',
  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' # Exclude arm64 for the simulator
}

  s.swift_version = '5.0'
end
