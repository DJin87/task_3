//
//  StartViewController.swift
//  task_3
//
//  Created by DJin on 18/12/2020.
//

import UIKit

class StartViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ViewController
        colorVC.colourMainVC = view.backgroundColor
    }
    
    @IBAction func unwinSegueToMainScreen(segue: UIStoryboardSegue) {
        let colorVC = segue.source as! ViewController
        colorVC.delegate = self
        colorVC.colorMain()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension StartViewController: ViewControllerDelegate {
    func colorGet(_ color: UIColor) {
        view.backgroundColor = color
    }
}
