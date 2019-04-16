//
//  ViewController.swift
//  CoordinatorExample
//
//  Created by Ragaie Alfy on 4/15/19.
//  Copyright © 2019 Ragaie Alfy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    
    @IBAction func showFirst(_ sender: Any) {
        
        
        
        
        let viewcontroller = UIViewController.initWith(storyBoardName: UIStoryboard.identifer.main.rawValue, viewControllerId: UIViewController.identifier.secandView.rawValue)
        
        AppCoordinator.shared?.pushViewController(viewController: viewcontroller, animated: true)
    }
    
    @IBAction func showSecand(_ sender: Any) {
        
        
        let viewcontroller = UIViewController.initWith(storyBoardName: UIStoryboard.identifer.main.rawValue, viewControllerId: UIViewController.identifier.demo1.rawValue)
        
        AppCoordinator.shared?.pushViewController(viewController: viewcontroller, animated: true)
        
        
    }
}

