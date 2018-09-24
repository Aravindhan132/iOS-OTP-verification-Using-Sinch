//
//  EnterPhoneNumberViewController.swift
//  SwiftVerification
//
//  Created by christian jensen on 6/1/15.
//  Copyright (c) 2015 christian jensen. All rights reserved.
//

import UIKit
import SinchVerification



class EnterPhoneNumberViewController: UIViewController {
    @IBOutlet weak var phoneNumber: UITextField!
   var verification:Verification?
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.phoneNumber.becomeFirstResponder();
    }
    @IBAction func startVerification(sender: AnyObject) {
        self.verification = SMSVerification("ef6dd8c9-d215-4ce9-b9ec-57ea5f14dedb", phoneNumber: phoneNumber.text ?? "nil")
        
        
    
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
