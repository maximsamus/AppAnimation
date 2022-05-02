//
//  ViewController.swift
//  AppAnimation
//
//  Created by Максим Самусь on 06.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var springAnimationLabel: UILabel! {
        didSet {
            springAnimationLabel.text = animation.description
        }
    }
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationLabel.text = animation.description
        springAnimationView.animate()
        animation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(springAnimationView.animation)", for: .normal)
    }
}
