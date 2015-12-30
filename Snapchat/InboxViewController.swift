//
//  InboxViewController.swift
//  Snapchat
//
//  Created by Duc Tran on 10/15/15.
//  Copyright © 2015 Developers Academy. All rights reserved.
//

import UIKit
import Parse

class InboxViewController: UITableViewController
{
    struct Storyboard {
        static let ShowLoginSegue = "Show Log In"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if PFUser.currentUser() == nil {
            performSegueWithIdentifier(Storyboard.ShowLoginSegue, sender: nil)
        }
    }
    
    // MARK: - Target / Action
    @IBAction func logOutDidTap(sender: AnyObject?)
    {
        PFUser.logOut()
        self.performSegueWithIdentifier(Storyboard.ShowLoginSegue, sender: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == Storyboard.ShowLoginSegue {
            let loginSignupVC = segue.destinationViewController as! LoginSignupViewController
            loginSignupVC.hidesBottomBarWhenPushed = true
            loginSignupVC.navigationItem.hidesBackButton = true
            
        }
    }
}

























