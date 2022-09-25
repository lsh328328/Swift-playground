//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 이승헌 on 2022/09/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "나는 나 자신을 빼 놓고는 모두 안다.", name: "벤다이크"),
        Quote(contents: "집에 가고 싶다.", name: "김후릐"),
        Quote(contents: "OB는 긴장도 되지 않는다", name: "강윤서"),
        Quote(contents: "iOS개발,,, 시시해져 버렸다.", name: "김태현"),
        Quote(contents: "나는 iOS 초보 개발자다.", name: "이승헌"),
        Quote(contents: "분노는 바보들의 가슴속에서만 살아간다.", name: "아인슈타인")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tabQuoteGeneratorButton(_ sender: UIButton) {
        let random = Int(arc4random_uniform(5)) // 0~4사이의 수를 무작위로 생성
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

