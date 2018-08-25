Pod::Spec.new do |s|
  s.name         = "ModuleL"
  s.version      = "0.0.1"
  s.summary      = "A short description of ModuleL."
  s.homepage = "http://tieba.baidu.com"
  s.license      = "Internal"
  s.author   	 = "neareast"
  s.platform     = :ios, "8.0"

  s.source       = {  :git => "./", :tag => "#{s.version}" }
  s.source_files  = "**/*.{h,m,cc,mm}"
  s.exclude_files = "ModuleL/lib/**.framework/**/*"

  s.requires_arc = true
  s.public_header_files = "ModuleL/*.h"

  s.dependency 'ModuleA'
  
  s.vendored_libraries = "ModuleL/lib/Lottie/libLottie.a"
  s.vendored_frameworks = "ModuleL/lib/WebP.framework"

  s.pod_target_xcconfig = {"OTHER_LDFLAGS" => '$(inherited) -ObjC',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'}

  s.static_framework = true

  s.prefix_header_contents = <<-EOS
    #ifdef __OBJC__

    #endif
EOS
end

