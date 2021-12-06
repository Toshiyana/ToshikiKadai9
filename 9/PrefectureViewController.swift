//
//  PrefectureViewController.swift
//  9
//
//  Created by Toshiyana on 2021/12/05.
//

import UIKit

class PrefectureViewController: UIViewController {
    weak var delegate: PrefectureViewControllerDelegate?

    @IBAction private func cancelButtonPressed() {
        delegate?.didCancel()
    }

    @IBAction private func prefectureButtonPressed(_ sender: UIButton) {
        guard let prefecture = sender.titleLabel?.text else { return }
        delegate?.didSelect(prefecture: prefecture)
    }
}
