//
//  NextViewController.swift
//  PracticePassValuesToTheNextScreen
//
//  Created by Johnny Toda on 2022/02/26.
//

import UIKit

class NextViewController: UIViewController {
    private var countModel = CountModel.init(count: 0)
    
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
