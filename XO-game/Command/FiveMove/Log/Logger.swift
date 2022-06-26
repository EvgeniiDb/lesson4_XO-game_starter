//
//  Logger.swift
//  XO-game
//
//  Created by Евгений Доброволец on 23.06.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

class Logger {
    // MARK: - Static Properties

    public static var shared = Logger()

    // MARK: - Initialization
    
    private init() {}

    // MARK: - Public Methods

    public func log(action: LogAction) {
        let command = LogCommand(action: action)
        LogInvoker.shared.addLogCommand(command: command)
    }
}
