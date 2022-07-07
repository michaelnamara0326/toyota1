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
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        return logoImageView
    }()
    let notifyButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Action"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let bottomView: UIView = {
       let view = UIView()
        view.backgroundColor = .white // switch to white
        view.layer.cornerRadius = 8.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let bannerView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "banner1")
        view.layer.cornerRadius = 8.0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let testButton:UIButton = {
        let btn = UIButton()
        let icon = UIImageView()
        let titleLabel = UILabel()
        let contentLabel = UILabel()
        
        btn.setImage(UIImage(named: "icon_img_background_left"), for: .normal)
        icon.image = UIImage(named: "icon_img_filterCars")
        titleLabel.font = UIFont(name: "PingFangTC-Semibold", size: 14)
        contentLabel.font = UIFont(name: "PingFangTC-Regular", size: 12)
        titleLabel.text = "速配車款"
        contentLabel.text = "輸入條件篩選"
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        btn.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        btn.addSubview(icon)
        btn.addSubview(titleLabel)
        btn.addSubview(contentLabel)
        
        icon.topAnchor.constraint(equalTo: btn.topAnchor, constant: 16).isActive = true
        icon.leadingAnchor.constraint(equalTo: btn.leadingAnchor, constant: 16).isActive = true
        icon.widthAnchor.constraint(equalToConstant: 32).isActive = true
        icon.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: btn.topAnchor, constant: 11).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 12).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 56).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 22).isActive = true
        
        contentLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        contentLabel.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 12).isActive = true
        contentLabel.widthAnchor.constraint(equalToConstant: 72).isActive = true
        contentLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        btn.backgroundColor = .blue // recognize
        return btn
    }()
    let testButton1:[UIButton] = {
        var btn:[UIButton] = []
    
        let titleLabelArr:[String] = ["速配車款","立即預選"]
        let contentLabelArr:[String] = ["輸入條件篩選", "預選下一台愛車"]
        let iconArr:[String] = ["icon_img_filterCars", "icon_img_buycar"]
        let bgArr:[String] = ["icon_img_background_left", "icon_img_background_right"]

        for i in 0..<2{
            let icon = UIImageView()
            let titleLabel = UILabel()
            let contentLabel = UILabel()
            
            icon.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            contentLabel.translatesAutoresizingMaskIntoConstraints = false
            
            titleLabel.font = UIFont(name: "PingFangTC-Semibold", size: 14)
            contentLabel.font = UIFont(name: "PingFangTC-Regular", size: 12)
            titleLabel.adjustsFontSizeToFitWidth = true
            contentLabel.adjustsFontSizeToFitWidth = true
            
            btn.append(UIButton())
            btn[i].translatesAutoresizingMaskIntoConstraints = false
            
            
            btn[i].addSubview(icon)
            btn[i].addSubview(titleLabel)
            btn[i].addSubview(contentLabel)
            
            btn[i].setImage(UIImage(named: bgArr[i]), for: .normal)
            icon.image = UIImage(named: iconArr[i])
            titleLabel.text = titleLabelArr[i]
            contentLabel.text = contentLabelArr[i]
            
            icon.topAnchor.constraint(equalTo: btn[i].topAnchor, constant: 16).isActive = true
            icon.leadingAnchor.constraint(equalTo: btn[i].leadingAnchor, constant: 16).isActive = true
            icon.widthAnchor.constraint(equalToConstant: 32).isActive = true
            icon.heightAnchor.constraint(equalToConstant: 32).isActive = true
            
            titleLabel.topAnchor.constraint(equalTo: btn[i].topAnchor, constant: 11).isActive = true
            titleLabel.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 12).isActive = true

            
            contentLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
            contentLabel.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: 12).isActive = true

        }
        return btn
    }()
    let stack:UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(naviBoundView)
        view.addSubview(bottomView)
        naviBoundView.addSubview(logoImageView)
        naviBoundView.addSubview(notifyButton)
        
        stack.addArrangedSubview(testButton1[0])
        stack.addArrangedSubview(testButton1[1])
//        stack.addArrangedSubview(testButton1)
        
        
        bottomView.addSubview(bannerView)
        bottomView.addSubview(stack)
        
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
//        naviBoundView.bottomAnchor.constraint(equalTo:bottomView.topAnchor).isActive = true

        logoImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        logoImageView.topAnchor.constraint(equalTo: naviBoundView.topAnchor, constant: 60).isActive = true
        logoImageView.leadingAnchor.constraint(equalTo: naviBoundView.leadingAnchor, constant: 16).isActive = true
        
        notifyButton.widthAnchor.constraint(equalToConstant: 24).isActive = true
        notifyButton.heightAnchor.constraint(equalToConstant: 24).isActive = true
        notifyButton.topAnchor.constraint(equalTo: naviBoundView.topAnchor, constant: 63).isActive = true
        notifyButton.trailingAnchor.constraint(equalTo: naviBoundView.trailingAnchor, constant: -16).isActive = true
        
        // MARK: setup bottom view
        bottomView.topAnchor.constraint(equalTo: naviBoundView.bottomAnchor, constant: -24.0).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        bannerView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 16).isActive = true
        bannerView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 16).isActive = true
        bannerView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -16).isActive = true
        bannerView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        stack.topAnchor.constraint(equalTo: bannerView.bottomAnchor, constant: 24).isActive = true
        stack.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 16).isActive = true
        stack.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -16).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 64).isActive = true
    }

}

