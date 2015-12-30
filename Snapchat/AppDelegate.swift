//
//  AppDelegate.swift
//  Snapchat
//
//  Created by Duc Tran on 10/15/15.
//  Copyright © 2015 Developers Academy. All rights reserved.
//

import UIKit
import Parse
import Bolts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        // [Optional] Power your app with Local Datastore. For more info, go to
        // https://parse.com/docs/ios_guide#localdatastore/iOS
        //Parse.enableLocalDatastore()
        
        // Initialize Parse.
        Parse.setApplicationId("EamfvxRwVHY94heCVrfDbNNysr8I2pMzPi5wjGRI",
            clientKey: "lh2KYtF6Kt72dXFI5mwgS4FXiW05hrkREPpmWrMo")
        
        // [Optional] Track statistics around application opens.
        PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
        
        /*
        let testObject = PFObject(className: "TestClass")
        testObject["testProperty"] = "value1"
        testObject.saveInBackgroundWithBlock{(success,error) -> Void in
            if error == nil {
                print("successfully saved the object")
            }
        }
        */
        
        customizeAppearance()
        
        return true
    }
    
    func customizeAppearance() {
        let tintColor = UIColor(red: 255/255, green: 45/255, blue: 85/255, alpha: 1)
        window!.tintColor = tintColor
    }


}













