Pod::Spec.new do |spec|
  spec.name             = 'ZenSwiftUI'
  spec.version          = '1.0.9'
  spec.swift_version    = '5.10'
  spec.summary          = 'ZenSwiftUI is a collection of views, extensions and functions for SwiftUI framework.'
  spec.description      = <<-DESC
	ZenSwiftUI is a collection of convenient and concise extensions, views and functions for SwiftUI framework..
                       DESC
  spec.homepage         = 'https://github.com/roland19deschain/ZenSwiftUI'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Alexey Roik' => 'roland19deschain@gmail.com' }
  spec.source           = { :git => 'https://github.com/roland19deschain/ZenSwiftUI.git', :tag => spec.version }
  spec.requires_arc     = true
  spec.ios.deployment_target = '16.0'
  spec.source_files     = 'Sources/**/*{swift}'
end
