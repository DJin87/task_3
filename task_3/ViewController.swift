//
//  ViewController.swift
//  task_3
//
//  Created by DJin on 04/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    @IBOutlet var redName: UILabel!
    @IBOutlet var redCount: UILabel!
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenName: UILabel!
    @IBOutlet var greenCount: UILabel!
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueName: UILabel!
    @IBOutlet var blueCount: UILabel!
    @IBOutlet var blueSlider: UISlider!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.layer.cornerRadius = 10
        
        //MARK: Label
        redName.font = redName.font.withSize(24)
        greenName.font = greenName.font.withSize(24)
        blueName.font = blueName.font.withSize(24)
        
        redName.text = "Red"
        redName.textColor = .red
        greenName.text = "Green"
        greenName.textColor = .green
        blueName.text = "Blue"
        blueName.textColor = .blue

        
        //MARK: Slider
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        redSlider.thumbTintColor = UIColor(red: 194/255, green: 87/255, blue: 174/255, alpha: 1)
        greenSlider.thumbTintColor = UIColor(red: 194/255, green: 87/255, blue: 174/255, alpha: 1)
        blueSlider.thumbTintColor = UIColor(red: 194/255, green: 87/255, blue: 174/255, alpha: 1)
        
        redCount.text = String(Int(redSlider.value))
        greenCount.text = String(Int(greenSlider.value))
        blueCount.text = String(Int(blueSlider.value))
        
        redSlider.minimumTrackTintColor = .red
        redSlider.maximumTrackTintColor = .black
        
        greenSlider.minimumTrackTintColor = .green
        greenSlider.maximumTrackTintColor = .black
        
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.maximumTrackTintColor = .black
        
        colourMainView()
    }

    @IBAction func redSliderAction(_ sender: UISlider) {
        colourMainView()
        redCount.text = String(Int(redSlider.value))
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        colourMainView()
        greenCount.text = String(Int(greenSlider.value))
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        colourMainView()
        blueCount.text = String(Int(blueSlider.value))
    }
    
    private func colourMainView() {
        mainView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value) / 255,
            green: CGFloat(greenSlider.value) / 255,
            blue: CGFloat(blueSlider.value) / 255,
            alpha: 1)
    }
    
}

