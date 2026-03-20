Pod::Spec.new do |s|
  s.name = 'CapacitorEnvironmentChecker'
  s.version = '0.1.0'
  s.summary = 'Capacitor plugin to detect whether an iOS app is running via TestFlight.'
  s.license = 'MIT'
  s.homepage = 'https://github.com/guidg/capacitor-environment-checker'
  s.author = { 'guidg' => 'guidg@users.noreply.github.com' }
  s.source = { :git => 'https://github.com/guidg/capacitor-environment-checker.git', :tag => s.version.to_s }
  s.source_files = 'ios/Sources/**/*.{swift,h,m,c,cc,mm,cpp}'
  s.ios.deployment_target = '13.0'
  s.dependency 'Capacitor'
  s.swift_version = '5.9'
end
