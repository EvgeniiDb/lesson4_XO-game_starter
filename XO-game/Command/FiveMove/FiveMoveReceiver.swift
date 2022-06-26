//
//  FiveMoveReceiver.swift
//  XO-game
//
//  Created by Евгений Доброволец on 26.06.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

class FiveMoveReceiver {
    // MARK: - Public Methods
    
    func getTuple(_ command: FiveMoveCommand) -> (Player, GameboardPosition){
        return command.getCommand
    }
}
