Pod::Spec.new do |s|
  s.name         = "RNDeviceName"
  s.version      = "2.1.0"
  s.summary      = "Swift library to get Apple device model name."

  s.description  = <<-DESC
                    Gets the marketing name from Apple devices, such as "iPhone 13 mini".
                   DESC

  s.homepage     = "https://github.com/souzainf3/RNDeviceName"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Romilson Nunes" => "souzainf3@yahoo.com.br" }
  s.source       = { :git => "https://github.com/souzainf3/RNDeviceName.git", :tag => s.version.to_s }
  
  s.ios.deployment_target  = '14.0'
  s.tvos.deployment_target = '14.0'
  
  s.swift_versions = ['6']

  s.source_files = "Sources/**/*"
  s.frameworks   = "UIKit"
end
