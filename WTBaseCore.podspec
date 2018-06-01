#### 验证是否正确
### pod lib lint WTBaseCore.podspec --allow-warnings --use-libraries --sources=https://github.com/CocoaPods/Specs.git

#### 提交到库(specs就是你们的私有库名，见下面repo add指令时的名字)
#### pod repo push specs WTBaseCore.podspec --allow-warnings --use-libraries --sources=https://github.com/CocoaPods/Specs.git

Pod::Spec.new do |s|
  s.name         = "WTBaseCore"
  s.version      = "0.0.5"
  s.summary      = "WT核心框架包"

  s.homepage     = "https://github.com/aliang666/WTBaseCore"

  s.license      = "MIT"
  s.author             = { "jienliang000" => "jienliang000@163.com" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.dependency 'YYWebImage',  '~> 1.0.5'
  s.dependency 'FDFullscreenPopGesture',  '~> 1.1'
  s.dependency 'DZNEmptyDataSet', '~> 1.8.1'
  s.dependency 'AFNetworking', '~> 3.1.0'
  s.dependency 'IQKeyboardManager', '~> 5.0.7'
  s.dependency 'Aspects',  '~> 1.4.1'
  s.dependency 'XAspect',  '~> 1.0.5'
  s.dependency 'MJExtension',  '~> 3.0.13'

  s.source       = { :git => "https://github.com/aliang666/WTBaseCore.git", :tag => "#{s.version}" }
  s.source_files  = "WTBaseCore/*.{h,m}"
  s.resource     = 'WTBaseCore/CoreRes/WTBaseCore.bundle'

  s.subspec 'CoreString' do |ss|
  ss.source_files = 'WTBaseCore/CoreString/**/*.{h,m,c,mm}'
  end

  s.subspec 'CoreUtil' do |ss|
  ss.source_files = 'WTBaseCore/CoreUtil/**/*.{h,m,c,mm}'
  end

  s.subspec 'CoreRes' do |ss|
  ss.source_files = 'WTBaseCore/CoreRes/**/*.{h,m,c,mm}'
  end

   s.subspec 'CoreUI' do |ss|
   ss.source_files = 'WTBaseCore/CoreUI/**/*.{h,m,c,mm}'
   end
  
  s.subspec 'CoreCell' do |ss|
  ss.source_files = 'WTBaseCore/CoreCell/**/*.{h,m,c,mm}'
  end

  s.subspec 'CoreController' do |ss|
  ss.source_files = 'WTBaseCore/CoreController/**/*.{h,m,c,mm}'
  end

  s.subspec 'CoreNetworking' do |ss|
  ss.source_files = 'WTBaseCore/CoreNetworking/**/*.{h,m,c,mm}'
  end

  s.subspec 'RETableViewManager' do |ss|
    ss.source_files = 'WTBaseCore/RETableViewManager/**/*.{h,m,c,mm}'
  end

  s.subspec 'WTAppDelegate' do |ss|
    ss.source_files = 'WTBaseCore/WTAppDelegate/**/*.{h,m,c,mm}'
  end


end
