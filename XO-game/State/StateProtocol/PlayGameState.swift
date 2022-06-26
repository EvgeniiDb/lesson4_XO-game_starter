//
//  PlayGameState.swift
//  XO-game
//
//  Created by Евгений Доброволец on 22.06.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

protocol PlayGameState {
    var isMoveCompleted: Bool { get set }
    func addSign(at position: GameboardPosition)
    func begin()
}



