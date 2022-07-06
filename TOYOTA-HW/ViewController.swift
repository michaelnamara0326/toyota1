//
//  ViewController.swift
//  TOYOTA-HW
//
//  Created by Michael Namara on 2022/7/4.
//

import UIKit

class ViewController: UIViewController {
    let naviBoundView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let logoImageView: UIImageView = {
        let logoImageView = UIImageView()
        logoImageView.image = UIImage(named: "Toyota Logo White")
        logoImageView.backgroundColor = .blue
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        return logoImageView
    }()
    let notifyButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Action"), for: .normal)
        button.backgroundColor = .blue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let bottomView: UIView = {
       let view = UIView()
        view.backgroundColor = .yellow // switch to white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let fnButton: UIButton = {
        let btn = UIButton()
        let btnBG = UIView()
        return btn
    }()
    let stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(naviBoundView)
        view.addSubview(bottomView)
        naviBoundView.addSubview(logoImageView)
        naviBoundView.addSubview(notifyButton)
        setupHomepageLayout()
    }
    func setupHomepageLayout(){
//        let guide=view.safeAreaLayoutGuide
        // MARK: setup navi view
//        naviBoundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        naviBoundView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        naviBoundView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        naviBoundView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        naviBoundView.heightAnchor.constraint(equalToConstant: 128.0).isActive = true
        naviBoundView.bottomAnchor.constraint(equalTo:bottomView.topAnchor).isActive = true

        logoImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        logoImageView.topAnchor.constraint(equalTo: naviBoundView.topAnchor, constant: 60).isActive = true
//        logoImageView.bottomAnchor.constraint(equalTo: naviBoundView.bottomAnchor, constant: 40).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: naviBoundView.leadingAnchor, constant: 16).isActive = true
//        logoImageView.trailingAnchor.constraint(equalTo: naviBoundView.trailingAnchor, constant: 199).isActive = true
        
        notifyButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        notifyButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        notifyButton.topAnchor.constraint(equalTo: naviBoundView.topAnchor, constant: 63).isActive = true
        notifyButton.trailingAnchor.constraint(equalTo: naviBoundView.trailingAnchor, constant: -16).isActive = true
//        actionButton.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 159).isActive = true
        
        // MARK: setup bottom view
        bottomView.topAnchor.constraint(equalTo: naviBoundView.bottomAnchor).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
    }
}

