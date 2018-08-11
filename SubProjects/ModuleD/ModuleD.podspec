Pod::Spec.new do |s|
  s.name         = "ModuleD"
  s.version      = "0.0.1"
  s.summary      = "A short description of ModuleD."
  s.homepage = "http://tieba.baidu.com"
  s.license      = "Internal"
  s.author   	 = "neareast"
  s.platform     = :ios, "8.0"

  s.source       = {  :git => "./", :tag => "#{s.version}" }
  s.source_files  = "**/*.{h,m,cc,mm}"

  s.requires_arc = true
  s.public_header_files = "**/*.h"

  s.dependency 'ModuleC'
  s.dependency 'ModuleL'

  s.pod_target_xcconfig = {"OTHER_LDFLAGS" => '-ObjC'}

  s.static_framework = true

  s.prefix_header_contents = <<-EOS
    #ifdef __OBJC__

    #endif
EOS
end

