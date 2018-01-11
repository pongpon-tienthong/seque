//
//  ViewController.swift
//  Seque
//
//  Created by Pongpon on 1/11/18.
//  Copyright © 2018 Pongpon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToTheSecondViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToTheSecondViewController" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.textPassedOver = textField.text
        }
    }
}

