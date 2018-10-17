Pod::Spec.new do |s|

  #Global
  binaryDirName = "pods.binary"
  logPrefix = "→→→→→ →→→→→ →→→→→\n"

  #Project
  moduleName = "ModuleB"
  compareDir = "ModuleB" #此目录下的文件发生变化，才需要更新静态库
  projectFullDir = ENV['PWD'] + "/SubProjects/" + moduleName
  binaryFullDir = projectFullDir + "/" + binaryDirName

  #Logic
  curCommit = `git log --pretty=format:"%h" -1`
  useSource = true
  binaryPath = ""
  fileName = ""
  binaryHash = ""

  ##删除对应.a即可强制使用源码；定义UseIfExist强制使用已有的二进制文件

  #存在目录
  if File::exist?(binaryFullDir)
    files = Dir::entries(binaryFullDir)
    #存在文件
    if files
      files.each do |fileName|
        regStr = "(?<=lib#{moduleName}\\.)\\w+?(?=\\.a)"
        binaryHash = fileName.match(Regexp.new(regStr))
        if binaryHash #找到文件hash
          binaryPath = binaryDirName + "/" + fileName
          break
        end
      end
      if binaryHash #存在符合规范的文件，防止异常拷贝的文件
        puts logPrefix + "Compare to #{binaryHash.to_s} in " + `pwd`.chomp + "/#{compareDir}"
        diff = `git diff #{binaryHash.to_s} --name-only -C #{compareDir}`
        puts "Changed files:\n" + diff
        if ENV['UseIfExist'] || binaryHash == curCommit || diff.length==0 #不存在变动
          #使用二进制
          useSource = false
        else
          #删除文件 使用源码，更新二进制文件
          require 'fileutils'
          puts logPrefix + "Deleting dir #{binaryFullDir}, build target to update binary"
          FileUtils::rm_rf(binaryFullDir)
        end
      else
        #文件错误 使用源码
        puts logPrefix + "No suitable binary file exists"
      end
    else
      #使用源码
      puts logPrefix + "Binary file folder empty"
    end
  else
    #使用源码
    puts logPrefix + "No binary file folder exists"
  end

  if useSource
    puts logPrefix + "Using source for #{moduleName} in #{projectFullDir}"
    s.source_files  = "**/*.{h,m,cc,mm}"

    script = <<-SS
      desDir=#{binaryFullDir}
      if [ -d $desDir ];then
        rm -rf $desDir
      fi
      mkdir $desDir
      curCommit=`git log --pretty=format:"%h" -1`
      cp -r $CONFIGURATION_BUILD_DIR/lib${TARGETNAME}.a $desDir/lib${TARGETNAME}.$curCommit.a
    SS

    s.script_phase = { :name => 'copy', :script => script, :execution_position => :after_compile }
  else
    puts logPrefix + "Using binary for #{moduleName} in " + binaryPath
    s.source_files  = "**/*.{h}"
    s.vendored_libraries = binaryPath
    s.preserve_paths = "**/*.a"
  end

  #Basic
  s.name         = moduleName
  s.version      = "0.0.1"
  s.summary      = "A short description of ModuleB."
  s.homepage = "http://tieba.baidu.com"
  s.license      = "Internal"
  s.author   	 = "neareast"
  s.platform     = :ios, "8.0"
  s.source       = {  :git => "./", :tag => "#{s.version}" }

  s.requires_arc = true
  # s.public_header_files = "**/*.h"

  s.pod_target_xcconfig = {"OTHER_LDFLAGS" => '$(inherited) -ObjC',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'}
  
  s.dependency 'ModuleA'
  s.dependency 'ModuleL'
  
  s.static_framework = true

  s.prefix_header_contents = <<-EOS
    #ifdef __OBJC__

    #endif
EOS
end

