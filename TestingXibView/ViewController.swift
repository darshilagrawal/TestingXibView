//
//  ViewController.swift
//  TestingXibView
//
//  Created by Darshil Agrawal on 28/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let vc=UIViewController(nibName: "MainViewFromNib", bundle: nil)
        self.present(vc, animated: true, completion: nil)
    }


}

