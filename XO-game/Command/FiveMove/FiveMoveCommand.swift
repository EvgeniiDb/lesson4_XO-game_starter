//
//  FiveMoveCommand.swift
//  XO-game
//
//  Created by Евгений Доброволец on 26.06.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

final class FiveMoveCommand {
    // MARK: - Computed Properties

    var getCommand: (Player, GameboardPosition) {
        return (self.player, self.position)
    }

    // MARK: - Private Properties

    private let player: Player
    private let position: GameboardPosition


    // MARK: - Initialization

    init(_ player: Player, _ position: GameboardPosition) {
        self.player = player
        self.position = position
    }

}
