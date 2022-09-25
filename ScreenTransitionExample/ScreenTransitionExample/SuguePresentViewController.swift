//
//  SuguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승헌 on 2022/09/25.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
