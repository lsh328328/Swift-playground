//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 이승헌 on 2022/09/25.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController 뷰가 로드 되었다.")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타날 것이다.")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController 뷰가 나타났다.")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController 뷰가 사라질 것이다.")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController 뷰가 사라졌다.")
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        
        // instantiateViewController -> 스토리보드에 있는 view controller를 인스턴스화
        // 다운 캐스팅
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "Crayon"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") as? CodePresentViewController else { return }
        viewController.modalPresentationStyle = .fullScreen
        viewController.name = "Crayon"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    
    // segueway 실행하기 직전에 시스템에 의해 자동으로 호출됨
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? SuguePushViewController {
            viewController.name = "Crayon"
        }
    }
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
}

