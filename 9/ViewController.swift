//
//  ViewController.swift
//  9
//
//  Created by Toshiyana on 2021/12/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var prefectureLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPrefectureViewControllerSegue" {
            let prefectureVC = segue.destination as? PrefectureViewController
            prefectureVC?.delegate = self
        }
    }
}

extension ViewController: PrefectureDelegate {
    func setPrefecture(prefecture: String?) {
        prefectureLabel.text = prefecture
    }
}
