//
//  PlayerInputState.swift
//  XO-game
//
//  Created by Евгений Доброволец on 22.06.2022.
//  Copyright © 2022 plasmon. All rights reserved.
//

import Foundation

class PlayerInputState: GameState {
    
    private(set) var isCompleted = false
    
    let player: Player
    private(set) weak var gameViewController: GameViewController?
    private(set) weak var gameboard: Gameboard?
    private(set) weak var gameboardView: GameboardView?
    let markViewPrototype: MarkView
    
    init(player: Player,
         markViewPrototype: MarkView,
         gameViewController: GameViewController,
         gameboard: Gameboard,
         gameboardView: GameboardView) {
        self.player = player
        self.gameViewController = gameViewController
        self.gameboard = gameboard
        self.gameboardView = gameboardView
        self.markViewPrototype = markViewPrototype
    }
    
    func begin() {
        switch player {
        case .first:
            gameViewController?.firstPlayerTurnLabel.isHidden = false
            gameViewController?.secondPlayerTurnLabel.isHidden = true
        case .second:
            gameViewController?.firstPlayerTurnLabel.isHidden = true
            gameViewController?.secondPlayerTurnLabel.isHidden = false
        }
        
        gameViewController?.winnerLabel.isHidden = true
    }
    
    func addMark(at position: GameboardPosition) {
        log(.playerInput(player: player, position: position))
        guard let gameboardView = self.gameboardView, gameboardView.canPlaceMarkView(at: position) else {
            return
        }
        
        
        
        gameboard?.setPlayer(player, at: position)
        gameboardView.placeMarkView(markViewPrototype.copy(), at: position)
        
        isCompleted = true
    }
    
}
