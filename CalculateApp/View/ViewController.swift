//
//  ViewController.swift
//  CalculateApp
//
//  Created by Анастасия on 05.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let distanseTextField = UITextField()
    let fuelTextField = UITextField()
    let priceTextField = UITextField()
    let buttonResult = UIButton()
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        settingsApp()
        
    }
}

