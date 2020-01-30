//
//  AuthNavigatingDelegate.swift
//  IChat
//
//  Created by Алексей Пархоменко on 31.01.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

protocol AuthNavigatingDelegate: class {
    func toLoginVC()
    func toSignUpVC()
}
