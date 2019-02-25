Pod::Spec.new do |s|

    s.platform				= :ios
    s.ios.deployment_target	= '8.0'
	s.osx.deployment_target = '10.9'
    s.swift_version			= '4.2'
    s.name					= 'TapSwiftFixes'
    s.summary				= 'Useful additions that are missing in Swift.'
    s.requires_arc			= true
    s.version				= '1.0.6'
    s.license				= { :type => 'MIT', :file => 'LICENSE' }
    s.author				= { 'Tap Payments' => 'hello@tap.company' }
    s.homepage				= 'https://github.com/Tap-Payments/TapSwiftFixes'
    s.source				= { :git => 'https://github.com/Tap-Payments/TapSwiftFixes.git', :tag => s.version.to_s }
    s.requires_arc			= true
    s.default_subspecs		= 'CoreGraphics', 'Exceptions', 'Threading'
    
    s.subspec 'Appearance' do |appearance|
		
		s.ios.deployment_target	= '8.0'
	
        appearance.source_files = 'TapSwiftFixesiOS/Source/AppearanceFixes/*.{h,m}'
    
    end
    
    s.subspec 'CoreGraphics' do |coreGraphics|
		
		coreGraphics.ios.deployment_target	= '8.0'
		coreGraphics.osx.deployment_target	= '10.9'
	
        coreGraphics.source_files = 'Common/Source/CoreGraphicsFixes/*.{h,m}'
    
    end
    
    s.subspec 'Exceptions' do |exceptions|
		
		exceptions.ios.deployment_target	= '8.0'
		exceptions.osx.deployment_target	= '10.9'
	
        exceptions.source_files = 'Common/Source/ExceptionCatcher/*.{h,m}'
    
    end
    
    s.subspec 'Threading' do |threading|
		
		threading.ios.deployment_target	= '8.0'
		threading.osx.deployment_target	= '10.9'
	
        threading.source_files = 'Common/Source/ThreadingFixes/*.{swift}'
    
    end

end
