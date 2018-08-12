# ProjectModularDemo

An iOS project Modular demo, which shows the basic modular thoughts in iOS.

This project uses CocoaPods as dependency manager, with ***ProjectContainer.xcworkspace*** as the root workspace.

There are a few module projects in directory `SubProjects`, and a demo standalone project in directory `StandaloneProjects` which could run by itself, or provide some files as a module.

*.podspec files in modules shows the basic usage of local pods, or say Development Pods. 

These modules has complicate relationship with each other， as the following chart shows:
![](./ProjectContainerDemo/ProjectContainerDemo/support files/moduleChart.png)


Wish this project demo could help you with iOS project modularization，and usage of Cocoa Pods.
