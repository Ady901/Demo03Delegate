//
//  ViewController2.swift
//  Demo03Delegate
//
//  Created by Aditya Sharma on 9/5/18.
//  Copyright © 2018 AdityaSharma. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var delegate : ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Select Color"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonAction(_ sender : UIButton) {
        delegate.colorSelected(sender.backgroundColor!)
       self.navigationController?.popViewController(animated: true)
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
