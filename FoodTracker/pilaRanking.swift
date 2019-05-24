//
//  pilaRanking.swift
//  FoodTracker
//
//  Created by Vicente Castillo on 17-05-19.
//  Copyright © 2019 Apple Inc. All rights reserved.
//

import UIKit


class pilaRanking: UIStackView {

    private var rankinBotones = [UIButton]()
    var rating = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setBoton()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setBoton()
    }
    private func setBoton(){
        
        for _ in 0..<5 {
            let boton = UIButton()
            boton.backgroundColor = UIColor.red
            boton.translatesAutoresizingMaskIntoConstraints = false
            boton.heightAnchor.constraint(equalToConstant: 44.0).isActive=true
            boton.widthAnchor.constraint(equalToConstant: 44.0).isActive=true
            boton.addTarget(self, action: #selector(pilaRanking.botonPresionado(button:)), for: .touchUpInside)
            addArrangedSubview(boton)
            rankinBotones.append(boton)
        }
    }
    
    
    @objc func botonPresionado(button: UIButton){
        print("Boton Press")
    }
    

}
