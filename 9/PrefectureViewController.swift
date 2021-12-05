//
//  PrefectureViewController.swift
//  9
//
//  Created by Toshiyana on 2021/12/05.
//

import UIKit

class PrefectureViewController: UIViewController {
    weak var delegate: PrefectureDelegate?

    @IBAction private func cancelButtonPressed() {
        dismiss(animated: true, completion: nil)
    }

    @IBAction private func prefectureButtonPressed(_ sender: UIButton) {
        let prefecture = sender.titleLabel?.text
        delegate?.setPrefecture(prefecture: prefecture)
        dismiss(animated: true, completion: nil)
    }
}
