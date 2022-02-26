//
//  ViewController.swift
//  PracticePassValuesToTheNextScreen
//
//  Created by Johnny Toda on 2022/02/26.
//

import UIKit

class ViewController: UIViewController {
    private var countModel = CountModel.init(count: 0)

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var countUpButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
