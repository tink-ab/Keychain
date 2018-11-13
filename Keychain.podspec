Pod::Spec.new do |s|
  s.name         = "Keychain"
  s.version      = "0.2"
  s.summary      = "Micro framework for Keychain access."
  s.homepage     = "https://github.com/tink-ab/Keychain.swift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Lukas Lipka" => "lukaslipka@gmail.com" }
  s.social_media_url   = "https://twitter.com/tink"
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.swift_version = "4.0"
  s.source       = { :git => "github.com/tink-ab/Keychain.swift.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
end
