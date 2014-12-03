//
//  LightingScene.m
//  SKiOS8NewFeatTutorial
//
//  Created by Orlando Pereira on 08/10/14.
//  Copyright (c) 2014 Orlando Pereira. All rights reserved.
//

#import "LightingScene.h"

@implementation LightingScene

- (void)didMoveToView:(SKView *)view {
    SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Wicked-Cat.png"];
    [sprite setPosition:CGPointMake(self.frame.size.width/2, self.frame.size.height/2)];
    [sprite setScale:0.6];
    [sprite setZPosition:1];
    [sprite setShadowCastBitMask:1];
    [sprite setLightingBitMask:1];
    [self addChild:sprite];
    
    SKLightNode* light = [[SKLightNode alloc] init];
    [light setName:@"light"];
    [light setPosition:CGPointMake(100, 100)];
    [light setCategoryBitMask:1];
    [light setFalloff:1.5];
    [light setZPosition:1];
    [light setAmbientColor:[UIColor whiteColor]];
    [light setLightColor:[[UIColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:.5]];
    [light setShadowColor:[[UIColor alloc] initWithRed:0.9 green:0.25 blue:0.0 alpha:.5]];
    [self addChild:light];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [self childNodeWithName:@"light"].position = CGPointMake(location.x, location.y);
    }
}

@end
