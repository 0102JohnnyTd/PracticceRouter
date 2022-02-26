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
    @IBOutlet weak var goNextButton: UIButton! {
        didSet {
            goNextButton.addTarget(self, action: #selector(goNext), for: .touchUpInside)
        }
    }
    @objc func goNext() {
        // ViewControllerの生成
        let nextViewController = UIStoryboard.init(name: NextViewController.storyboardName, bundle: nil).instantiateInitialViewController() as! NextViewController
        // 遷移元の値を遷移先のVCに渡す処理
        nextViewController.countModel.count = countModel.count
        // 画面遷移のためのメソッド
        screenTransition(from: self, next: nextViewController)

    }

    @IBOutlet weak var countUpButton: UIButton! {
        didSet {
            countUpButton.addTarget(self, action: #selector(countUp), for: .touchUpInside)
        }
    }
    @objc func countUp() {
        countModel.count += 1
        countLabel.text = countModel.count.description
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController {
    func screenTransition(from: UIViewController, next: UIViewController, animated: Bool = true) {
        guard let navigationController = from.navigationController else {
            return from.present(next, animated: animated, completion: nil)
        }
        return navigationController.pushViewController(next, animated: animated)
    }
}
