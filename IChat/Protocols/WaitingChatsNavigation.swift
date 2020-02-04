//
//  WaitingChatsNavigation.swift
//  IChat
//
//  Created by Алексей Пархоменко on 04.02.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import Foundation

protocol WaitingChatsNavigation: class {
    func removeWaitingChat(chat: MChat)
    func changeToActive(chat: MChat)
}
