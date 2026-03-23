//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Everette, Erin on 3/4/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var studentStatus: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var myName: UITextField!
    
    @IBAction func myButton(_ sender: Any) {let name = myName.text!
        myLabel.text = "Hello \(name)"

        myName.resignFirstResponder()
    }
    
    @IBAction func selectStudent(_ sender: Any) {
        if (sender as AnyObject).isOn {
              studentStatus.text = "student"
              } else {
              studentStatus.text = "non-student"
              }
    }
    
    
    @IBAction func myRating(_ sender: UISlider) {
        let rating = Int(sender.value)
           ratingLabel.text = "Your Rating: \(rating)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = "Erin"
    }


}

