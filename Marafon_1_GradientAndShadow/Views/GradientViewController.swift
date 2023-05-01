//
//  GradientViewController.swift
//  Marafon_1_GradientAndShadow
//
//  Created by Андрей Федоров on 01.05.2023.
//

import Foundation
import UIKit

final class GradientViewController: UIViewController{
    
    private var rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}


//MARK: - Setup View
private extension GradientViewController{
    func setupView(){
        addViews()
        view.backgroundColor = .white
        addGradientLayer()
        
        setupLayots()
    }
}

//MARK: - Add Views
private extension GradientViewController{
    func addViews(){
        view.addSubview(rectangle)
    }
}


//MARK: - Gradient
private extension GradientViewController{
    func addGradientLayer(){
        let gradient = CAGradientLayer()
        gradient.frame = rectangle.bounds
        gradient.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.cornerRadius = 10
        gradient.masksToBounds = false
        gradient.shadowColor = UIColor.black.cgColor
        gradient.shadowOpacity = 0.5
        gradient.shadowOffset = CGSize(width: -1, height: 1)
        gradient.shadowRadius = 5
        rectangle.layer.insertSublayer(gradient, at: 0)
    }
}



//MARK: - Setup Layouts
private extension GradientViewController{
    func setupLayots(){
        rectangle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            rectangle.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
            rectangle.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rectangle.widthAnchor.constraint(equalToConstant: 100),
            rectangle.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
