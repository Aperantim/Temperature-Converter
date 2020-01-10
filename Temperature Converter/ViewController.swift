//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Виталий on 10.01.2020.
//  Copyright © 2020 Aperantim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sliderOutlet: UISlider! {
        didSet {
            sliderOutlet.minimumValue = -50
            sliderOutlet.maximumValue = 50
            sliderOutlet.value = 0
        }
    }
    @IBOutlet weak var celsiusOutlet: UILabel!
    @IBOutlet weak var fahrenheitOutlet: UILabel!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let celsiusTemperature = Int(sender.value)
        celsiusOutlet.text = "\(celsiusTemperature)ºC"
        
        let fahrenheitTemperature = Int((sender.value * 9 / 5) + 32)
        fahrenheitOutlet.text = "\(fahrenheitTemperature)ºF"
    }
    
}

