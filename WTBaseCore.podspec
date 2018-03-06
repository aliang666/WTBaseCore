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

  s.source       = { :git => "https://github.com/jienliang000/WTBaseCore.git", :tag => "#{s.version}" }
  s.source_files  = "WTBaseCore/*.{h,m}"




end
