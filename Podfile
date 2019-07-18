platform :ios, '10.0'
inhibit_all_warnings!
use_modular_headers!
use_frameworks!


abstract_target 'CommonSpecTarget' do

  #底层通用模块
  pod 'CYLTabBarController', '~> 1.28.3'
  pod 'WeexSDK', '~> 0.24.0'
  pod 'SnapKit', '~> 4.2.0'

  #通用业务模块
  pod 'HLCoreLibrary', :path => '../HLCoreLibrary'

  target 'HLYunVillageB' do #使用protocol组件化
    #底层组件
    pod 'ZRouter', '~> 1.0.12' # protocol通讯
  end

  target 'HLYunVillage' do
    #业务模块
    pod 'HLProfileUI', :path => '../HLProfileUI'
    pod 'HLNewsModule', :path => '../HLNewsModule'
    pod 'HLClassificationModule', :path => '../HLClassificationModule'
    pod 'HLMarketModule', :path => '../HLMarketModule'
    pod 'HLMomentsModule', :path => '../HLMomentsModule'
    #中间件
    pod 'HLCTMediator', :path => '../HLCTMediator'
    pod 'CTMediator' #主要是Target-Action 通讯

  end

end

