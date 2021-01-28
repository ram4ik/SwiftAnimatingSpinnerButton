//
//  ViewController.swift
//  SwiftAnimatingSpinnerButton
//
//  Created by Ramill Ibragimov on 28.01.2021.
//

import UIKit
import TransitionButton

class ViewController: UIViewController {

    let buttonNormal = TransitionButton(frame: CGRect(x: 40, y: 300, width: 250, height: 50))
    let buttonShake = TransitionButton(frame: CGRect(x: 40, y: 400, width: 250, height: 50))
    let buttonExpand = TransitionButton(frame: CGRect(x: 40, y: 500, width: 250, height: 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonNormal.backgroundColor = .systemBlue
        buttonNormal.setTitle("Normal", for: .normal)
        buttonNormal.layer.cornerRadius = 12
        buttonNormal.addTarget(self, action: #selector(didTapButtonNormal), for: .touchUpInside)
        
        buttonShake.backgroundColor = .systemGreen
        buttonShake.setTitle("Shake", for: .normal)
        buttonShake.layer.cornerRadius = 12
        buttonShake.addTarget(self, action: #selector(didTapButtonShake), for: .touchUpInside)
        
        buttonExpand.backgroundColor = .systemOrange
        buttonExpand.setTitle("Expand", for: .normal)
        buttonExpand.layer.cornerRadius = 12
        buttonExpand.addTarget(self, action: #selector(didTapButtonExpand), for: .touchUpInside)
        
        buttonNormal.spinnerColor = .white
        buttonShake.spinnerColor = .white
        buttonExpand.spinnerColor = .white
        
        view.addSubview(buttonNormal)
        view.addSubview(buttonShake)
        view.addSubview(buttonExpand)
        
    }

    @objc func didTapButtonNormal() {
        buttonNormal.startAnimation()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.buttonNormal.stopAnimation(animationStyle: .normal, revertAfterDelay: 1) {
                
            }
        }
    }
    
    @objc func didTapButtonShake() {
        buttonShake.startAnimation()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.buttonShake.stopAnimation(animationStyle: .shake, revertAfterDelay: 1) {
                
            }
        }
    }
    
    @objc func didTapButtonExpand() {
        buttonExpand.startAnimation()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.buttonExpand.stopAnimation(animationStyle: .expand, revertAfterDelay: 1) {
                
            }
        }
    }
}

