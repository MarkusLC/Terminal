//: A SpriteKit based Playground

import PlaygroundSupport
import SpriteKit

class GameScene: SKScene {
    
    private var label : SKLabelNode!
    private var spinnyNode : SKShapeNode!
    
    func teste (){
        let sourcePositions: [float2] = [
            float2(0, 1),   float2(0.5, 1),   float2(1, 1),
            float2(0, 0.5), float2(0.5, 0.5), float2(1, 0.5),
            float2(0, 0),   float2(0.5, 0),   float2(1, 0)
        ]
        let destinationPositions: [float2] = [
            float2(-0.25, 1.5), float2(0.5, 1.75), float2(1.25, 1.5),
            float2(0.25, 0.5),   float2(0.5, 0.5),   float2(0.75, 0.5),
            float2(-0.25, -0.5),  float2(0.5, -0.75),  float2(1.25, -0.5)
        ]
        let warpGeometryGrid = SKWarpGeometryGrid(columns: 2,
                                                  rows: 2,
                                                  sourcePositions: sourcePositions,
                                                  destinationPositions: destinationPositions)
        

        
        
        let sprite = SKSpriteNode()
        let warpGeometryGridNoWarp = SKWarpGeometryGrid(columns: 2, rows: 2)
        sprite.warpGeometry = warpGeometryGridNoWarp
        let warpAction = SKAction.warp(to: warpGeometryGrid, duration: 0.5)
        sprite.run(warpAction!)
        print("aqui")
    
    }
    
    
    
     
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    
    }
    
}

// Load the SKScene from 'GameScene.sks'
let sceneView = SKView(frame: CGRect(x:0 , y:0, width: 800, height: 400))
if let scene = GameScene(fileNamed: "GameScene") {
    // Set the scale mode to scale to fit the window
    scene.scaleMode = .aspectFill
    
    // Present the scene
    sceneView.presentScene(scene)
    
    
}

PlaygroundSupport.PlaygroundPage.current.liveView = sceneView


