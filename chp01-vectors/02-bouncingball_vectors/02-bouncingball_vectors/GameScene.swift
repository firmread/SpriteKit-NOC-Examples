//
//  GameScene.swift
//  02-bouncingball_vectors
//
//  Created by Reed Tothong on 6/19/16.
//  Copyright (c) 2016 Reed Tothong. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	
	var location:CGPoint = CGPointMake(100, 100)
	var velocity:CGPoint = CGPointMake(2.5, 5)
	
	var ball:SKSpriteNode!
	
	override func didMoveToView(view: SKView) {
		/* Setup your scene here */
		ball = SKSpriteNode(color: NSColor.blueColor(), size: CGSizeMake(48, 48))
		addChild(ball)
	}
	
	override func mouseDown(theEvent: NSEvent) {
		/* Called when a mouse click occurs */
		
	}
	
	override func update(currentTime: CFTimeInterval) {
		/* Called before each frame is rendered */
		
		location = CGPointMake(location.x + velocity.x, location.y + velocity.y)
		
		if (location.x > frame.width) || (location.x < 0) {
			velocity.x = velocity.x * -1;
		}
		if (location.y > frame.height) || (location.y < 0) {
			velocity.y = velocity.y * -1;
		}
		ball.position = location
	}

}
