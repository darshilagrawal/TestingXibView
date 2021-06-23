//
//  ViewController.swift
//  TestingXibView
//
//  Created by Darshil Agrawal on 28/05/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var numberOfItemsField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOfItemsField.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        numberOfItemsField.placeholder = "Enter Amount"
    }
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        print(numberOfItemsField.text)
        if numberOfItemsField.text != "" {
            if let amount = numberOfItemsField.text {
                let vc=UIViewController(nibName: "MainViewFromNib", bundle: nil)
                
                self.present(vc, animated: true, completion: nil)
                
            }
        }
    }
    

}

