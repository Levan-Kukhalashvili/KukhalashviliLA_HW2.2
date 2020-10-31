//
//  ViewController.swift
//  KukhalashviliLA_HW2.2
//
//  Created by Admin on 16.10.2020.
//

import UIKit

enum CurrentLight {
    case red, green, blue
}

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
        setColor()
        setValue(for: currentRedValue, currentGreenValue, currentBlueValue)
    }

    @IBAction func colorSliderAction(_ sender: UISlider) {
        setColor()
        switch sender.tag {
        case 0: currentRedValue.text = formatValue(slider: sender)
        case 1: currentGreenValue.text = formatValue(slider: sender)
        case 2: currentBlueValue.text = formatValue(slider: sender)
        default: break
        }
    }
    
    private func setupСustomization() {
        colorView.layer.cornerRadius = 20
        
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        blueSlider.tintColor = .blue
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label.tag {
            case 0: currentRedValue.text = formatValue(slider: redSlider)
            case 1: currentGreenValue.text = formatValue(slider: greenSlider)
            case 2: currentBlueValue.text = formatValue(slider: blueSlider)
            default: break
            }
        }
    }
    
    private func formatValue(slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

