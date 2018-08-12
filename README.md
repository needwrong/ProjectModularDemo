# ProjectModularDemo

An iOS project Modular demo, which shows the basic modular thoughts in iOS.

This project uses CocoaPods as dependency manager, with ***ProjectContainer.xcworkspace*** as the root workspace.

The CocoaPods version I currently use is the latest 1.5.3.

There are a few module projects in directory `SubProjects`, and a demo standalone project in directory `StandaloneProjects` which could run by itself, or provide some files as a module.

*.podspec files in modules shows the basic usage of local pods, or say Development Pods. 

These modules has complicate relationship with each other， as the following chart shows:
![](https://github.com/needwrong/ProjectModularDemo/blob/master/StandaloneProjects/StandaloneProject/StandaloneProject/support%20files/moduleChartNew.png?raw=true)


Wish this project demo could help you with iOS project modularization，and usage of Cocoa Pods.
