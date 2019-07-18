//
//  HLAppDelegate+Extension.swift
//  HLYunVillage
//
//  Created by HaviLee on 2019/7/10.
//  Copyright © 2019 HaviLee. All rights reserved.
//

import Foundation
import CYLTabBarController
import CTMediator
import HLCTMediator
import WeexSDK

extension AppDelegate {
    
    func viewControllers() -> [UINavigationController]{
        let newsRootVC = CTMediator.sharedInstance()?.informationRootViewController(callback: { (result) in
            
        })
        let newsNavi = UINavigationController(rootViewController: newsRootVC!)
        let friendRootVC = CTMediator.sharedInstance()?.momentsRootViewController(callback: { (result) in
            
        })
        let friendCycleNavi = UINavigationController(rootViewController: friendRootVC!)
        let classificationRootVC = CTMediator.sharedInstance()?.classificationRootViewController(callback: { (result) in
            
        })
        let classificationNavi = UINavigationController(rootViewController: classificationRootVC!)
        
        let marketRootVC = CTMediator.sharedInstance()?.marketRootViewController(callback: { (result) in
            
        })
        let marketNavi =   UINavigationController(rootViewController: marketRootVC!)
        
        let profileRootVC = CTMediator.sharedInstance()?.profileUIRootViewController(callback: { (result) in
            
        })
        let profileNavi =   UINavigationController(rootViewController: profileRootVC!)
        let viewControllers = [newsNavi, friendCycleNavi, classificationNavi, marketNavi, profileNavi]
        
        return viewControllers
        
    }
    
    
    func tabBarItemsAttributesForController() ->  [[String : String]] {
        
        let tabBarItemOne = [CYLTabBarItemTitle:"资讯",
                             CYLTabBarItemImage:"news_normal",
                             CYLTabBarItemSelectedImage:"news_highlight"]
        
        let tabBarItemTwo = [CYLTabBarItemTitle:"朋友圈",
                             CYLTabBarItemImage:"moment_normal",
                             CYLTabBarItemSelectedImage:"moment_highlight"]
        
        let tabBarItemThree = [CYLTabBarItemTitle:"分类",
                               CYLTabBarItemImage:"found_normal",
                               CYLTabBarItemSelectedImage:"found_highlight"]
        
        let tabBarItemFour = [CYLTabBarItemTitle:"商城",
                              CYLTabBarItemImage:"market_normal",
                              CYLTabBarItemSelectedImage:"market_highlight"]
        
        let tabBarItemFive = [CYLTabBarItemTitle:"我的",
                              CYLTabBarItemImage:"mine_normal",
                              CYLTabBarItemSelectedImage:"mine_highlight"]
        let tabBarItemsAttributes = [tabBarItemOne,tabBarItemTwo,tabBarItemThree,tabBarItemFour,tabBarItemFive]
        return tabBarItemsAttributes
    }
}

extension AppDelegate {
    
    func setupThirdPlatform() {
        WXAppConfiguration.setAppName("YunVillage")
        WXAppConfiguration.setAppGroup("China")
        WXAppConfiguration.setAppVersion("1.0.0")
        //
        WXSDKEngine.initSDKEnvironment()
        WXLog.setLogLevel(.WXLogLevelAll)
    }
}
