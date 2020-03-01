//
//  ForgetPasswordViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 29/02/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var logoImage: UIImageView!
    
    
    @IBAction func foregetPasswordBtn(_ sender: Any) {
        
        if emailTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            //return " User Name or Password Can't be Empty"
            
            let alert = UIAlertController(title: "Alert", message: "Enter your E-mail adress", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "Ok", style : .default ,handler : nil)
            
            let cancelAction = UIAlertAction(title: "Cancel", style : .cancel ,handler : nil)
            
            alert.addAction(alertAction)
            alert.addAction(cancelAction)
            
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        
        self.emailTxt.layer.cornerRadius = 25.0
        self.resetBtn.layer.cornerRadius = 25.0
        self.logoImage.layer.cornerRadius = 25.0
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
