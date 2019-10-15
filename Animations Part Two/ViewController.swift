//
//  ViewController.swift
//  Animations Part Two
//
//  Created by Michelle Cueva on 10/15/19.
//  Copyright © 2019 Michelle Cueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var topButtonStackview: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(linear)
        stackView.addArrangedSubview(easeIn)
        stackView.addArrangedSubview(easeOut)
        stackView.addArrangedSubview(easeInEaseOut)
        return stackView
    }()
    
    lazy var bottomButtonStackview: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.addArrangedSubview(reset)
        stackView.addArrangedSubview(animate)
        return stackView
    }()
    
    lazy var imageStackview: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(linearImage)
        stackView.addArrangedSubview(easeInImage)
        stackView.addArrangedSubview(easeOutImage)
        stackView.addArrangedSubview(easeInEaseOutImage)
        return stackView
    }()
    
    lazy var linear: UIButton = {
        let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(linearButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var easeIn: UIButton = {
        let button = UIButton()
        button.setTitle("EaseIn", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(easeInButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var easeOut: UIButton = {
        let button = UIButton()
        button.setTitle("EaseOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.addTarget(self, action: #selector(easeOutButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var easeInEaseOut: UIButton = {
        let button = UIButton()
        button.setTitle("EaseInEaseOut", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.titleLabel?.baselineAdjustment = .alignCenters
        button.addTarget(self, action: #selector(easeInEaseOutButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var reset: UIButton = {
         let button = UIButton()
         button.setTitle("Reset", for: .normal)
         button.setTitleColor(.blue, for: .normal)
         button.addTarget(self, action: #selector(resetButtonPressed), for: .touchUpInside)
         return button
     }()
    
    lazy var animate: UIButton = {
         let button = UIButton()
         button.setTitle("Animate", for: .normal)
         button.setTitleColor(.blue, for: .normal)
         button.addTarget(self, action: #selector(animateButtonPressed), for: .touchUpInside)
         return button
     }()
    
    lazy var linearImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "beachBall")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var easeInImage: UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "beachBall")
           image.contentMode = .scaleAspectFit
           return image
    }()
    
    lazy var easeOutImage: UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "beachBall")
           image.contentMode = .scaleAspectFit
           return image
    }()
    
    lazy var easeInEaseOutImage: UIImageView = {
              let image = UIImageView()
              image.image = UIImage(named: "beachBall")
              image.contentMode = .scaleAspectFit
              return image
       }()
    
    @objc func linearButtonPressed() {
        linearImage.isHidden = true
    }
    
    @objc func easeInButtonPressed() {
        easeInImage.isHidden = true
    }
    
    @objc func easeOutButtonPressed() {
        easeOutImage.isHidden = true
    }
    
    
    @objc func easeInEaseOutButtonPressed() {
        easeInEaseOutImage.isHidden = true
    }
    
    @objc func resetButtonPressed() {
         self.easeIn.transform = CGAffineTransform(translationX: 0, y: 0)
    }
    
    @objc func animateButtonPressed() {
        UIView.transition(with: view, duration: 3, options: [.curveLinear], animations: {
            self.linearImage.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
        
        UIView.transition(with: view, duration: 3, options: [.curveEaseIn], animations: {
            self.easeInImage.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
        
        UIView.transition(with: view, duration: 3, options: [.curveEaseOut], animations: {
            self.easeOutImage.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
        
        UIView.transition(with: view, duration: 3, options: [.curveEaseInOut], animations: {
            self.easeInEaseOutImage.transform = CGAffineTransform(translationX: 0, y: 600)
        }, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setSubviews()
        addConstraints()
        
    }
    
    private func setSubviews() {
        topButtonStackview.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(topButtonStackview)
        bottomButtonStackview.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(bottomButtonStackview)
        imageStackview.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(imageStackview)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            topButtonStackview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            topButtonStackview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            topButtonStackview.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            
            bottomButtonStackview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            bottomButtonStackview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            bottomButtonStackview.topAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -75),
            
            imageStackview.leadingAnchor.constraint(equalTo: topButtonStackview.leadingAnchor),
            imageStackview.trailingAnchor.constraint(equalTo: topButtonStackview.trailingAnchor),
            imageStackview.topAnchor.constraint(equalTo: topButtonStackview.bottomAnchor, constant: 30),
            imageStackview.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }


}

