//
//  AppCoordinator.swift
//  CoordinatorExample
//
//  Created by Ragaie Alfy on 4/15/19.
//  Copyright © 2019 Ragaie Alfy. All rights reserved.
//

import UIKit

class AppCoordinator {
    
    public static var shared : AppCoordinator?
    let window: UIWindow  // 2
    var rootNavigationController : UINavigationController  // 3
    
    var currentViewController : UIViewController!{
        
        get {
            return rootNavigationController.viewControllers.last
        }
    }

    
    init(window: UIWindow) { //4
        self.window = window
        rootNavigationController = UINavigationController()
        //you can add extra setting in app navigation controller
        //
       // rootNavigationController.navigationBar.prefersLargeTitles = true
        AppCoordinator.shared = self
 
    }
    
    func start() {  // 6
        window.rootViewController = rootNavigationController
        window.makeKeyAndVisible()
    }
    
    func setViewControllers(viewControllers: [UIViewController],animated : Bool){
        rootNavigationController.setViewControllers(viewControllers, animated: false)
    }
    
    
    func pushViewController(viewController: UIViewController,animated : Bool){
        
        rootNavigationController.pushViewController(viewController, animated: animated)
    }
 
    
    func setRootViewController(viewController: UIViewController){
        rootNavigationController.setViewControllers([viewController], animated: false)
    }
    
    
 
}
