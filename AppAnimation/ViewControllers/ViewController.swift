//
//  ViewController.swift
//  AppAnimation
//
//  Created by Максим Самусь on 06.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationLabel: UILabel!
    
    var viewDescription: String {
         """
        preset: \(springAnimationView.animation)
        curve: \(springAnimationView.curve)
        force: \(String(format: "%.02f", springAnimationView.force))
        duration: \(String(format: "%.02f", springAnimationView.duration))
        delay: \(String(format: "%.02f", springAnimationView.delay))
        """
    }
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = AnimationsData.shared.animations.randomElement()?.rawValue ?? ""
        springAnimationView.curve = AnimationsData.shared.curves.randomElement()?.rawValue ?? ""
        springAnimationView.force = CGFloat(Float.random(in: 1...1.5))
        springAnimationView.duration = CGFloat(Float.random(in: 1...1.5))
        springAnimationView.delay = CGFloat(Float.random(in: 0.1...0.5))
        springAnimationLabel.text = viewDescription
        springAnimationView.animate()
        
        sender.setTitle("Run \(springAnimationView.animation)", for: .normal)
    }
}
