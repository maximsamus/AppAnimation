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
    
    var viewDescription: String {
         """
        preset: \(preset)
        curve: \(curve)
        force:
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            preset: AnimationsData.shared.animations.randomElement()?.rawValue ?? "",
            curve: AnimationsData.shared.curves.randomElement()?.rawValue ?? "",
            force: Float.random(in: 1...3),
            duration: Float.random(in: 1...2),
            delay: Float.random(in: 0.1...1)
        )
    }
}
