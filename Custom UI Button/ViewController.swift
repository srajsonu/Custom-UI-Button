//
//  ViewController.swift
//  Custom UI Button
//
//  Created by ARY@N on 21/03/19.
//  Copyright © 2019 ARYAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet private var topCustomButton: CustomButton!
    var bottomCustomButton = CustomButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBottomButtonConstraints()
        addActionToBottomButton()
        bottomCustomButton.setTitle("Bottom", for: .normal)
    }
    
    
    func setupBottomButtonConstraints() {
        view.addSubview(bottomCustomButton)
        bottomCustomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomCustomButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        bottomCustomButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        bottomCustomButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bottomCustomButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
    }
    
    
    func addActionToBottomButton() {
        bottomCustomButton.addTarget(self, action: #selector(bottomButtonTapped), for: .touchUpInside)
    }
    
    
 
    @IBAction func topButtonTapped(_ sender: Any) {
        topCustomButton.shake()
    }
    
    
    @objc func bottomButtonTapped() {
        bottomCustomButton.shake()
    }
}

