workspace 'ProjectContainer.xcworkspace'
platform :ios, '8.0'

use_frameworks!

project 'ProjectContainerDemo/ProjectContainerDemo.xcodeproj'

### Projects

def defModuleA
    pod 'ModuleA', :path => './SubProjects/ModuleA'
end

def defModuleB
    pod 'ModuleB', :path => './SubProjects/ModuleB'
end

def defModuleC
    pod 'ModuleC', :path => './SubProjects/ModuleC'
end

def defModuleD
    pod 'ModuleD', :path => './SubProjects/ModuleD'
end

def defModuleL
    pod 'ModuleL', :path => './SubProjects/ModuleL'
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

