//
//  GameScene.swift
//  01-bouncingball_novectors
//
//  Created by Reed Tothong on 6/19/16.
//  Copyright (c) 2016 Reed Tothong. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	
	var x:CGFloat = 100.0
	var y:CGFloat = 100.0
	var xspeed:CGFloat = 2.5
	var yspeed:CGFloat = 2.0
	
	var ball:SKSpriteNode!
	
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
		ball = SKSpriteNode(color: NSColor.darkGrayColor(), size: CGSizeMake(48, 48))
		addChild(ball)
    }
    
    override func mouseDown(theEvent: NSEvent) {
        /* Called when a mouse click occurs */
		
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
		x = x + xspeed
		y = y + yspeed
		
		if ((x > frame.width) || (x < 0)){
			xspeed = xspeed * -1
		}
		if ((y > frame.height) || (y < 0)){
			yspeed = yspeed * -1
		}
		
		ball.position = CGPointMake(x, y)
		
    }
}
