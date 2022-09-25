//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승헌 on 2022/09/25.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    // delegate 사용할 때 변수 앞에 weak를 붙여준다
    // 왜? 안붙여주면 강한 참조가 발생하여 메모리 누수 가능성이 생김
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "Crayon")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
