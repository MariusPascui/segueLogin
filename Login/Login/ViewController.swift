//
//  ViewController.swift
//  Login
//
//  Created by Marius on 27.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotUsername: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text
        }
        
    }

    @IBAction func forgotuser(_ sender: Any) {
        performSegue(withIdentifier: "nextPage", sender: forgotUsername)
    }
    
    @IBAction func forgotpass(_ sender: Any) {
        performSegue(withIdentifier: "nextPage", sender: forgotPassword)
    }
}

