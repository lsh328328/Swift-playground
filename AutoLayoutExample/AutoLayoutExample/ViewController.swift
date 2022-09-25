//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by 이승헌 on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabChangeColorButton(_ sender: UIButton) {
        self.colorView.backgroundColor = UIColor.blue
    }
}
