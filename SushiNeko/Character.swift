//
//  GameScene.swift
//  SushiNeko
//
//  Created by Student Laptop_7/19_1 on 11/11/19.
//  Copyright © 2019 Makeschool. All rights reserved.
//

import SpriteKit

class Character: SKSpriteNode {
    
    let Punch = SKAction(named: "Punch")!
    
    /* Character side */
    
    var side: Side = .left {
        didSet {
            if side == .left {
                xScale = 1
                position.x = 70
            } else {
                /* An easy way to flip an asset horizontally is to invert the X-axis scale */
                xScale = -1
                position.x = 252
            }
            /* Run the punch action */ run(Punch)
        }
    }
    

    /* You are required to implement this for your subclass to work */
    override init(texture: SKTexture?, color: UIColor, size: CGSize) {
        super.init(texture: texture, color: color, size: size)
    }

    /* You are required to implement this for your subclass to work */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
