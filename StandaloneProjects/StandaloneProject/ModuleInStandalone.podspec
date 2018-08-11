Pod::Spec.new do |s|
  s.name         = "ModuleInStandalone"
  s.version      = "0.0.1"
  s.summary      = "This is a demo of module inside standalone."
  s.homepage = "http://tieba.baidu.com"
  s.license      = "Internal"
  s.author   	 = "neareast"
  s.platform     = :ios, "8.0"

  s.source       = {  :git => "./", :tag => "#{s.version}" }
  s.source_files  = "StandaloneProject/src/*.{h,m,cc,mm}"
  s.resource_bundles = {
    'resources' => ['StandaloneProject/support files/*.png']
  }
  #  spec.resources = ["Images/*.png", "Sounds/*"]

  s.requires_arc = true
  s.public_header_files = "src/*.h"

  s.dependency 'ModuleA'
  s.dependency 'ModuleB'

  s.pod_target_xcconfig = {"OTHER_LDFLAGS" => '-ObjC'}

  s.static_framework = true

  s.prefix_header_contents = <<-EOS
    #ifdef __OBJC__

    #endif
EOS
end

