Pod::Spec.new do |s|

    s.platform = :ios
    s.ios.deployment_target = '8.0'
    s.swift_version = '4.1'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    s.name = 'TapSwiftFixes'
    s.summary = 'Useful additions that are missing in Swift.'
    s.requires_arc = true
    s.version = '1.0.3'
    s.license = { :type => 'MIT', :file => 'LICENSE' }
    s.author = { 'Tap Payments' => 'hello@tap.company' }
    s.homepage = 'https://github.com/Tap-Payments/TapSwiftFixes'
    s.source = { :git => 'https://github.com/Tap-Payments/TapSwiftFixes.git', :tag => s.version.to_s }
    s.requires_arc = true
    s.default_subspecs = 'Appearance', 'CoreGraphics', 'Exceptions', 'Threading'
    
    s.subspec 'Appearance' do |appearance|
    
        appearance.source_files = 'TapSwiftFixes/Source/AppearanceFixes/*.{h,m}'
    
    end
    
    s.subspec 'CoreGraphics' do |coreGraphics|
    
        coreGraphics.source_files = 'TapSwiftFixes/Source/CoreGraphicsFixes/*.{h,m}'
    
    end
    
    s.subspec 'Exceptions' do |exceptions|
    
        exceptions.source_files = 'TapSwiftFixes/Source/ExceptionCatcher/*.{h,m}'
    
    end
    
    s.subspec 'Threading' do |threading|
    
        threading.source_files = 'TapSwiftFixes/Source/ThreadingFixes/*.{swift}'
    
    end

end
