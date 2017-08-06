//
//  SettingsViewController.swift
//  tippy
//
//  Created by Sarah Edkins on 8/5/17.
//  Copyright © 2017 Sarah Edkins. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTip: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "defaultTip")
        defaultTip.selectedSegmentIndex = intValue
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "defaultTip")
        defaultTip.selectedSegmentIndex = intValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setDefaultTip() {
        let defaults = UserDefaults.standard
        defaults.set(defaultTip.selectedSegmentIndex, forKey: "defaultTip")
        defaults.synchronize()
     }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
