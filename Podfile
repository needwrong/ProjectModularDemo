workspace 'ProjectContainer.xcworkspace'
platform :ios, '8.0'

use_frameworks!

project 'ProjectContainerDemo/ProjectContainerDemo.xcodeproj'

### Projects

def defModuleA
    pod 'ModuleA', :path => './subProjects/ModuleA'
end

def defModuleB
    pod 'ModuleB', :path => './subProjects/ModuleB'
end

def defModuleC
    pod 'ModuleC', :path => './subProjects/ModuleC'
end

def defModuleD
    pod 'ModuleD', :path => './subProjects/ModuleD'
end

def defModuleL
    pod 'ModuleL', :path => './subProjects/ModuleL'
end

def defModuleInStandalone
    pod 'ModuleInStandalone', :path => './StandaloneProjects/StandaloneProject/ModuleInStandalone.podspec'
end

def defSDKS
    defModuleA
    defModuleL
end

### Targets

target :ProjectContainerDemo do
    project 'ProjectContainerDemo/ProjectContainerDemo.xcodeproj'

    defSDKS
    defModuleB
    defModuleC
    defModuleD
    defModuleInStandalone
end

target :StandaloneProject do
    project 'StandaloneProjects/StandaloneProject/StandaloneProject.xcodeproj'

    defModuleA
    defModuleB
    defModuleD
end

ENV['COCOAPODS_DISABLE_STATS'] = 'true'

