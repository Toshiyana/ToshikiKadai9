//
//  PrefectureDelegate.swift
//  9
//
//  Created by Toshiyana on 2021/12/05.
//

import Foundation

protocol PrefectureViewControllerDelegate: AnyObject {
    func didSelect(prefecture: String)
    func didCancel()
}
