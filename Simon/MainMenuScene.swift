//
//  MainMenuScene.swift
//  Simon
//
//  Created by Matheus Aeroso on 30/08/21.
//

import SpriteKit

class MainMenuScene: SKScene {

    override func didMove(to view: SKView) {
        self.run(SKAction.playSoundFileNamed("startgame.caf", waitForCompletion: false))
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let node = self.atPoint(location)

            if node is SKLabelNode && node.name == "startButton" {
                if let scene = GameScene(fileNamed: "GameScene") {
                    scene.scaleMode = .aspectFill
                    self.view?.presentScene(scene)
                }
            }
        }
    }
}
