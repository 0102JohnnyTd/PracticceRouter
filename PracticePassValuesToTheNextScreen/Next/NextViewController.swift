//
//  NextViewController.swift
//  PracticePassValuesToTheNextScreen
//
//  Created by Johnny Toda on 2022/02/26.
//

import UIKit

final class NextViewController: UIViewController {
    var countModel = CountModel.init(count: 0)
    static let storyboardName = "Next"
    
    @IBOutlet private weak var countLabel: UILabel! {
        didSet {
            countLabel.text = "遷移元から渡された値：\(countModel.count)"
        }
    }
}
