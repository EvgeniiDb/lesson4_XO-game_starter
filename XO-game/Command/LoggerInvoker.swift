//
//  LoggerInvoker.swift
//  XO-game
//
//  Created by Евгений Доброволец on 23.06.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

class LoggerInvoker {
    static let shared = LoggerInvoker()
    
    private let logger = Logger()
    private let batchSize = 10
    private var commands: [LogCommand] = []
    
    func addLogCommand(_ command: LogCommand) {
        commands.append(command)
    }
    
    private func executeCommandsIfNeeded() {
        guard self.commands.count >= batchSize else {
            return
        }
    commands.forEach { logger.writeMessageToLog($0.logMessage) }
        commands = []
    }
}

//for commit
