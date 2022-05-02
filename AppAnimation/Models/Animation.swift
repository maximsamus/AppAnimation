//
//  Animation.swift
//  AppAnimation
//
//  Created by Максим Самусь on 06.04.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float

    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: AnimationsData.shared.animations.randomElement()?.rawValue ?? "",
            curve: AnimationsData.shared.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 1...1.5),
            duration: Float.random(in: 0.8...1.6),
            delay: 0.3
        )
    }
}
