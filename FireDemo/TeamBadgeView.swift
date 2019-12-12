//
//  TeamBadgeView.swift
//  Sideline
//
//  Created by Matt Ao on 11/23/19.
//  Copyright © 2019 Betty Labs Incorporated. All rights reserved.
//

import UIKit

class TeamBadgeView: UIView {
    let emitter = CAEmitterLayer()
    let fireSize = CGSize(width: 16, height: 18)
    let fireScale: CGFloat = 0.8

    func configure() {
        emitter.seed = UInt32(CACurrentMediaTime())
        emitter.emitterPosition = CGPoint(x: bounds.midX, y: 0)
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterSize = fireSize
//        emitter.renderMode = CAEmitterLayerRenderMode.additive
        layer.addSublayer(emitter)
        emitter.emitterCells = []
    }

    @IBAction func tapAction(_ sender: Any) {
        emitFire()
        print("FIRE")
    }

    private func emitFire() {
        let cell = CAEmitterCell()
        let beginTime = CACurrentMediaTime()
        cell.birthRate = 1
        cell.beginTime = beginTime
        cell.duration = 1
        cell.lifetime = 1
        cell.velocity = 250
        cell.velocityRange = 50
        cell.yAcceleration = 100
        cell.alphaSpeed = -1.5
        cell.scale = fireScale
        cell.emissionRange = .pi/8
        cell.contents = NSAttributedString(string: "🔥").toImage(size: fireSize)?.cgImage

        emitter.emitterCells?.append(cell)
    }
}
