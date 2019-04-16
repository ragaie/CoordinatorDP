//
//  ViewController+Extenstion.swift
//  CoordinatorExample
//
//  Created by Ragaie Alfy on 4/16/19.
//  Copyright © 2019 Ragaie Alfy. All rights reserved.
//

import UIKit


extension UIViewController{

    static func initWith(storyBoardName : String , viewControllerId : String)->UIViewController{
            return   UIStoryboard.init(name: storyBoardName, bundle: nil).instantiateViewController(withIdentifier: viewControllerId)
        
        
    }
    
    enum identifier : String {
        
        case firstView  = "viewID"
        case secandView = "secandID"
        case demo1 = "demo1"

        
    }
    
    
 
    
}

