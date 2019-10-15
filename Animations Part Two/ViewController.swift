//
//  ViewController.swift
//  Animations Part Two
//
//  Created by Michelle Cueva on 10/15/19.
//  Copyright © 2019 Michelle Cueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var buttonStackview: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(Linear)
        stackView.addArrangedSubview(EaseIn)
        stackView.addArrangedSubview(EaseOut)
        stackView.addArrangedSubview(EaseInEaseOut)
        return stackView
    }()
    
    
    lazy var Linear: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(linearButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var EaseIn: UIButton = {
        let button = UIButton()
        button.setTitle("EaseIn", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(easeInButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var EaseOut: UIButton = {
        let button = UIButton()
        button.setTitle("EaseOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(easeOutButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var EaseInEaseOut: UIButton = {
        let button = UIButton()
        button.setTitle("EaseInEaseOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.baselineAdjustment = .alignCenters
        button.addTarget(self, action: #selector(easeInEaseOutButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    @objc func linearButtonPressed() {
       
    }
    
    @objc func easeInButtonPressed() {
       
    }
    
    @objc func easeOutButtonPressed() {
       
    }
    
    
    @objc func easeInEaseOutButtonPressed() {
       
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setSubviews()
        addConstraints()
    }
    
    private func setSubviews() {
        buttonStackview.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(buttonStackview)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            buttonStackview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            buttonStackview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            buttonStackview.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100)
        ])
    }


}

