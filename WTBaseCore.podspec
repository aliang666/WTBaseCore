#### 验证是否正确
### pod lib lint WTBaseCore.podspec --allow-warnings --use-libraries --sources=https://github.com/CocoaPods/Specs.git

#### 提交到库(specs就是你们的私有库名，见下面repo add指令时的名字)
#### pod repo push specs WTBaseCore.podspec --allow-warnings --use-libraries --sources=https://github.com/CocoaPods/Specs.git

Pod::Spec.new do |s|
  s.name         = "WTBaseCore"
  s.version      = "0.0.1"
  s.summary      = "WT核心框架包"

  s.homepage     = "https://github.com/jienliang000/WTBaseCore"

  s.license      = "MIT"
  s.author             = { "jienliang000" => "jienliang000@163.com" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.dependency 'YYWebImage',  '~> 1.0.5'
  s.dependency 'FDFullscreenPopGesture',  '~> 1.1'


  s.source       = { :git => "https://github.com/jienliang000/WTBaseCore.git", :tag => "#{s.version}" }
  s.source_files  = "WTBaseCore/*.{h,m}"
  s.resource     = 'WTBaseCore/CoreRes/WTBaseCore.bundle'


  s.subspec 'CoreUI' do |ss|
  ss.source_files = 'WTBaseCore/CoreUI/**/*.{h,m,c,mm}'
  end

  s.subspec 'CoreUtil' do |ss|
  ss.source_files = 'WTBaseCore/CoreUtil/**/*.{h,m,c,mm}'
  end

  s.subspec 'CoreRes' do |ss|
  ss.source_files = 'WTBaseCore/CoreRes/**/*.{h,m,c,mm}'
  end

  s.subspec 'CoreController' do |ss|
  ss.source_files = 'WTBaseCore/CoreController/**/*.{h,m,c,mm}'
  end




end
