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
            guard let navC = segue.destination as? UINavigationController,
                  let prefectureVC = navC.topViewController as? PrefectureViewController else {
                return
            }

            prefectureVC.delegate = self
        }
    }
}

extension ViewController: PrefectureViewControllerDelegate {
    func didSelect(prefecture: String) {
        dismiss(animated: true, completion: nil)
        prefectureLabel.text = prefecture
    }

    func didCancel() {
        dismiss(animated: true, completion: nil)
    }
}
