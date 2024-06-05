//
//  Extension VC.swift
//  CalculateApp
//
//  Created by Анастасия on 05.06.2024.
//

import Foundation

//MARK: - settingsApp
extension ViewController {
    
    func settingsApp() {
        setupDistanseTF()
    }
    
    
}

//MARK: - setupObjects
extension ViewController {
    
    func setupDistanseTF() {
        view.addSubview(distanseTextField)
        distanseTextField.translatesAutoresizingMaskIntoConstraints = false
        
        distanseTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        distanseTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        distanseTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        distanseTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        distanseTextField.keyboardType = .numberPad
        distanseTextField.borderStyle = .roundedRect
        distanseTextField.backgroundColor = .lightGray
        distanseTextField.placeholder = "км"
        
        setupFuelTF()
   
    }
}

extension ViewController {
    func setupFuelTF() {
        view.addSubview(fuelTextField)
        fuelTextField.translatesAutoresizingMaskIntoConstraints = false
        
        fuelTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        fuelTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        fuelTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        fuelTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        fuelTextField.keyboardType = .numberPad
        fuelTextField.borderStyle = .roundedRect
        fuelTextField.backgroundColor = .lightGray
        fuelTextField.placeholder = "Расход на 100/км"
        
        setupPricelTF()
   
    }
}

extension ViewController {
    func setupPricelTF() {
        view.addSubview(priceTextField)
        priceTextField.translatesAutoresizingMaskIntoConstraints = false
        
        priceTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 180).isActive = true
        priceTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        priceTextField.widthAnchor.constraint(equalToConstant: 300).isActive = true
        priceTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        priceTextField.keyboardType = .numberPad
        priceTextField.borderStyle = .roundedRect
        priceTextField.backgroundColor = .lightGray
        priceTextField.placeholder = "цена за литр"
        
        setupButtons()
    }
}

extension ViewController {
    
    func setupButtons() {
        
    view.addSubview(buttonResult)
    buttonResult.translatesAutoresizingMaskIntoConstraints = false
    
    buttonResult.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
    buttonResult.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
    buttonResult.widthAnchor.constraint(equalToConstant: 300).isActive = true
    buttonResult.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
    buttonResult.backgroundColor = .lightGray
    buttonResult.setTitle("посчитать", for: .normal)
        buttonResult.addTarget(self, action: #selector(calculate), for: .touchUpInside)
    
        setupLabel()
}
    
    @objc func calculate() {
        
        guard let distanseStr = distanseTextField.text, let distance = Double(distanseStr),
              let fuelStr = fuelTextField.text, let fuel = Double(fuelStr),
              let priceStr = priceTextField.text, let price = Double(priceStr)
     else {
            label.text = "не корректно введены данные"
            return
    }
        let cost = (distance / 100.0) * fuel * price
        label.text = "Стоимость бензина: \(cost) рублей"
    }
}

extension ViewController {
    
    func setupLabel() {
    view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
    
        label.topAnchor.constraint(equalTo: buttonResult.topAnchor, constant: 50).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
        label.heightAnchor.constraint(equalToConstant: 50).isActive = true
    
        label.textColor = .black
      
    
}
}
