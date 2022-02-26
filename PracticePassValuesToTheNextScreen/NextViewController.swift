//
//  NextViewController.swift
//  PracticePassValuesToTheNextScreen
//
//  Created by Johnny Toda on 2022/02/26.
//

import UIKit

class NextViewController: UIViewController {
    var countModel = CountModel.init(count: 0)
    static let storyboardName = "Next"
    
    @IBOutlet weak var countLabel: UILabel! {
        didSet {
            countLabel.text = "遷移元から渡された値：\(countModel.count)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
