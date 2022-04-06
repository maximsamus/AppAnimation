//
//  AnimationData.swift
//  AppAnimation
//
//  Created by Максим Самусь on 06.04.2022.
//
import Spring

class AnimationsData {
    
    static let shared = AnimationsData()
    
    let animations = Spring.AnimationPreset.allCases
    
    let curves = Spring.AnimationCurve.allCases
}
