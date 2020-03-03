//
//  ForgetPasswordViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 29/02/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var forgetTxt: UITextField!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var forgetErrorLable: UILabel!
    
    @IBOutlet weak var logoImage: UIImageView!
    
    
    @IBAction func foregetPasswordBtn(_ sender: Any) {
        
        if forgetTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            //return " User Name or Password Can't be Empty"
            
            let alert = UIAlertController(title: "Alert", message: "Enter your E-mail adress", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "Ok", style : .default ,handler : nil)
            
            let cancelAction = UIAlertAction(title: "Cancel", style : .cancel ,handler : nil)
            
            alert.addAction(alertAction)
            alert.addAction(cancelAction)
            
            self.present(alert, animated: true, completion: nil)
        }
        else{
            
            
//            let email = forgetTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//
//
//            Auth.auth().signIn(Email: email){ (result, error) in
//
//                if error != nil{
//                    self.forgetErrorLable.text = error!.localizedDescription
//                    self.forgetErrorLable.alpha = 1
//                }
//
//            }
            
            
        }
    }
    
    override func viewDidLoad() {
        
//        self.emailTxt.layer.cornerRadius = 25.0
//        self.resetBtn.layer.cornerRadius = 25.0
//        self.logoImage.layer.cornerRadius = 25.0
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func setUpElements(){
        
        forgetErrorLable.alpha = 0
        
        Utilities.styleTextField(forgetTxt)
        Utilities.styleHellowButton(resetBtn)
      //  Utilities.styleHellowButton(logoImage)
        
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
