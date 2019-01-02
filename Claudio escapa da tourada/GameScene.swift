//
//  GameScene.swift
//  Claudio escapa da tourada
//
//  Created by Leonnardo Rabello on 01/01/2019.
//  Copyright © 2019 No Name Org. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let cam = SKCameraNode()
    let ground = Ground()
    let player = Player()
    
    
    override func didMove(to view: SKView) {
        self.anchorPoint = .zero
        self.backgroundColor = UIColor(red: 0.4, green: 0.6, blue: 0.95, alpha: 1.0)
        
        self.camera = cam
    
        player.position = CGPoint(x: 150, y: 250)
        self.addChild(player)
        
        let bee1 = Bee()
        bee1.position = CGPoint(x: 325, y: 325)
        let bee2 = Bee()
        bee2.position = CGPoint(x: 200, y: 325)
        
        self.addChild(bee1)
        self.addChild(bee2)
        
        ground.position = CGPoint(x: -self.size.width * 2, y: 150)
        ground.size = CGSize(width: self.size.width * 6, height: 0)
        ground.createChildren()
        self.addChild(ground)
    }
    
    override func didSimulatePhysics() {
        self.camera!.position = player.position
    }
}
