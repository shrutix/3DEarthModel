//
//  EarthNode.swift
//  3DEarth
//
//  Created by Shruti Jana on 10/28/18.
//  Copyright © 2018 SJ. All rights reserved.
//

import SceneKit

class EarthNode: SCNNode {

    override init(){
        super.init()
        self.geometry = SCNSphere(radius: 1)
        self.geometry?.firstMaterial?.diffuse.contents = UIImage(named:"dif")
        self.geometry?.firstMaterial?.specular.contents = UIImage(named:"spec")
        self.geometry?.firstMaterial?.emission.contents = UIImage(named:"emi")
        self.geometry?.firstMaterial?.normal.contents = UIImage(named:"norm")
        
        self.geometry?.firstMaterial?.shininess = 48
        
        let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi) / 180, around: SCNVector3(x: 0, y: 1, z: 0), duration: 7)
        
        let repeatAction = SCNAction.repeatForever(action)
        
        self.runAction(repeatAction)
    }
    
    required init?(coder aDecoder:NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}

