//
//  ViewController.swift
//  task_3
//
//  Created by DJin on 04/12/2020.
//

import UIKit

protocol ViewControllerDelegate {
    func colorGet(_ color: UIColor)
}

class ViewController: UIViewController {
    
    var delegate: ViewControllerDelegate? //waek выдаёт ошибку
    var colourMainVC: UIColor!

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
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    
   
    @IBOutlet var goBackButton: UIButton!
    
    @IBAction func goBack(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mainView.backgroundColor = colourMainVC
        
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
        
        redTextField.text = String(Int(0))
        greenTextField.text = String(Int(0))
        blueTextField.text = String(Int(0))
        
        colorMain()
    }

    @IBAction func redSliderAction(_ sender: UISlider) {
        colorMain()
        redCount.text = String(Int(redSlider.value))
        redTextField.text = String(Int(redSlider.value))
    }
    
    @IBAction func greenSliderAction(_ sender: UISlider) {
        colorMain()
        greenCount.text = String(Int(greenSlider.value))
        greenTextField.text = String(Int(greenSlider.value))
    }
    
    @IBAction func blueSliderAction(_ sender: UISlider) {
        colorMain()
        blueCount.text = String(Int(blueSlider.value))
        blueTextField.text = String(Int(blueSlider.value))
    }
    
    func colorMain() {

        let colorCreation = UIColor(
            red: CGFloat(redSlider.value) / 255,
            green: CGFloat(greenSlider.value) / 255,
            blue: CGFloat(blueSlider.value) / 255,
            alpha: 1)
        
        mainView.backgroundColor = colorCreation
        delegate?.colorGet(colorCreation)
    }
}

