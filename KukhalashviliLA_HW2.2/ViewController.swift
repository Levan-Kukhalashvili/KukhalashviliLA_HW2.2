//
//  ViewController.swift
//  KukhalashviliLA_HW2.2
//
//  Created by Admin on 16.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var currentRedValue: UILabel!
    @IBOutlet var currentGreenValue: UILabel!
    @IBOutlet var currentBlueValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupСustomization()
        colorSliderAction()
    }

    @IBAction func colorSliderAction() {
        let redValue = CGFloat(redSlider.value)
        let greenValue = CGFloat(greenSlider.value)
        let blueValue = CGFloat(blueSlider.value)
        
        lableValue()
        
        colorView.backgroundColor = UIColor(
            red: redValue,
            green: greenValue,
            blue: blueValue,
            alpha: 1)
    }
    
    private func setupСustomization() {
        colorView.layer.cornerRadius = 30
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
    }
    
    private func lableValue() {
        currentRedValue.text = String(format: "%.2f", redSlider.value)
        currentGreenValue.text = String(format: "%.2f", greenSlider.value)
        currentBlueValue.text = String(format: "%.2f", blueSlider.value)
    }
    
}

