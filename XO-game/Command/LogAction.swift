//
//  LogAction.swift
//  XO-game
//
//  Created by Евгений Доброволец on 23.06.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

enum LogAction {
    case playerInput(player: Player, position: GameboardPosition)
    case gameFinished(winner: Player?)
    case restartGame
}

func log(_ action: LogAction) {
    let command = LogCommand(action: action)
    LoggerInvoker.shared.addLogCommand(command)
}
