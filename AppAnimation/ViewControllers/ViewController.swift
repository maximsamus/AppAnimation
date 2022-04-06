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
    
    private var animation = Animation.getAnimation()
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationLabel.text = animation.viewDescription
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        animation = Animation.getAnimation()
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

