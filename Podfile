workspace 'ProjectContainer.xcworkspace'
platform :ios, '8.0'

#use_frameworks!

project 'ProjectContainerDemo/ProjectContainerDemo.xcodeproj'

### Projects

def defModuleA
    pod 'ModuleA', :path => './BasicModules/ModuleA'
end

def defModuleL
    pod 'ModuleL', :path => './BasicModules/ModuleL'
end

def defSDKS
    defModuleA
    defModuleL
end

### Targets

target :ProjectContainerDemo do
    project 'ProjectContainerDemo/ProjectContainerDemo.xcodeproj'

    defSDKS
    
    pod 'MGJRouter', '~>0.10.0'
end

ENV['COCOAPODS_DISABLE_STATS'] = 'true'

