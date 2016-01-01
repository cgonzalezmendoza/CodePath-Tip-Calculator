//
//  SettingsViewController.swift
//  tips
//
//  Created by guadalupe.gonzalez on 12/31/15.
//  Copyright © 2015 carlos.gonzalez. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipSegment: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func DefaultValueChanged(sender: AnyObject) {        
        let defaults = NSUserDefaults.standardUserDefaults()
        
        defaults.setInteger(defaultTipSegment.selectedSegmentIndex, forKey: "default_tip_percentage")
        
        defaults.synchronize()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
