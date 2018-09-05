//
//  ViewController.swift
//  Demo03Delegate
//
//  Created by Aditya Sharma on 9/5/18.
//  Copyright © 2018 AdityaSharma. All rights reserved.
//

import UIKit

@objc
protocol ControllerDelegate {
  
    @objc func colorSelected(_ color : UIColor)
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonAction(_ sender : UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension ViewController : ControllerDelegate {
    
    func colorSelected(_ color: UIColor) {
        self.view.backgroundColor = color
    }
}
