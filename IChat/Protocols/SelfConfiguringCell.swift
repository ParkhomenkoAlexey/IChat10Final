//
//  SelfConfiguringCell.swift
//  IChat
//
//  Created by Алексей Пархоменко on 28.01.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
