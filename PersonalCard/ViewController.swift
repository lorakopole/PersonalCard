//
//  ViewController.swift
//  PersonalCard
//
//  Created by Karol on 31/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BackgroundSwitch: UISwitch!
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.textColor = .white
        BackgroundSwitch.isOn = false
        loginTextField.isHidden = true
        loginButton.isHidden = true
        passwordTextField.isHidden = true
    }


    @IBAction func SwitchChanged(_ sender: UISwitch) {
        
        if BackgroundSwitch.isOn
        {
            mainView.backgroundColor = UIColor.black
        }
        else
        {
            mainView.backgroundColor = UIColor.white
        }
        loginTextField.isHidden = false
        passwordTextField.isHidden = false
        loginButton.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500), execute: {
            self.BackgroundSwitch.isHidden = true
        })
        
    }
}

