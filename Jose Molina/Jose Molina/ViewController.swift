//
//  ViewController.swift
//  Jose Molina
//
//  Created by Jose Octavio on 28/12/22.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate, ObservableObject {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int( sender.value ))"
    }
    
   
    @IBOutlet weak var GPATextField: UITextField!
    
    
    @IBOutlet weak var hobbiesTextField: UITextField!
    
    @IBOutlet weak var nextInternshipTextField: UITextField!
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        let introduction = "Howdy :) my name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I'm a CS major at \(schoolNameTextField.text!). I am currently in my \(year!) year, my GPA is \(GPATextField.text!) and I own \(numberOfPetsLabel.text!) dog. It is \(morePetsSwitch.isOn) that I want more pets. My hobbies are: \(hobbiesTextField.text!) Next summer I'll be a \(nextInternshipTextField.text!), Seattle. I want to learn iOS development so that I can create apps that will have a positive impact in my community. I have in mind apps related to mental health, finance and transportation. Please don't forget to follow me on github and contact me on Linkedin if you wish to know more. Also cheack out my website! Happy holidays :)"
                
           let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
           
           let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        func redirectHandler(alert: UIAlertAction!) {
            let config = SFSafariViewController.Configuration()
            config.entersReaderIfAvailable = true

            let url = URL(string: "https://tavo-molina.github.io/my-website/")
            let vc = SFSafariViewController(url: url!, configuration: config)
            present(vc, animated: true)
        }
        
            let websiteButton = UIAlertAction(title: "Go to my website", style: .default, handler: redirectHandler)
           
           alertController.addAction(action)
            alertController.addAction(websiteButton)

           
           present(alertController, animated: true, completion: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

