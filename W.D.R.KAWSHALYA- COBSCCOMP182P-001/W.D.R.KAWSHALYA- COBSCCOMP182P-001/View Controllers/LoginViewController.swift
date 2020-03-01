//
//  LoginViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 28/02/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginbtnRadius: UIButton!
    //@IBOutlet weak var loginBtnR: UIButton!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    //@IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func loginBtn(_ sender: Any) {
                
//                let alert = UIAlertController(title: "Alert", message: "Error", preferredStyle: .alert)
//                
//                let alertAction = UIAlertAction(title: "Ok", style : .default ,handler : nil)
//                
//                let cancelAction = UIAlertAction(title: "Cancel", style : .cancel ,handler : nil)
//                
//                alert.addAction(alertAction)
//                alert.addAction(cancelAction)
//                
//                self.present(alert, animated: true, completion: nil)
//            
        
        
        
            if usernameTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
                
                //return " User Name or Password Can't be Empty"
                
                let alert = UIAlertController(title: "Alert", message: "User Name or Password Can't be Empty", preferredStyle: .alert)
                
                let alertAction = UIAlertAction(title: "Ok", style : .default ,handler : nil)
                
                let cancelAction = UIAlertAction(title: "Cancel", style : .cancel ,handler : nil)
                
                alert.addAction(alertAction)
                alert.addAction(cancelAction)
                
                self.present(alert, animated: true, completion: nil)
            }
           // return nil
        //}
        
        let username = usernameTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
   //     Auth.auth().signIn(withEmail: email, password: password){ (result, error) in
            
//            if error != nil{
//                self.errorLabel.text = error!.localizedDescription
//                self.errorLabel.alpha = 1
//
//            }
//            else{
//                let homeViewController = storyboard?.instantiateInitialViewController(identifier: Constants.storyboard.homeViewController) as? homeViewController
//
//                view.window?.roadViewController = homeViewController
//                view.window?.makeKeyAndVisible()
//
//            }
        
       
        //}
    }
    
    
    
    
    override func viewDidLoad() {
        
        self.loginbtnRadius.layer.cornerRadius = 25.0
        self.usernameTxt.layer.cornerRadius = 25.0
        self.passwordTxt.layer.cornerRadius = 25.0
        self.imageView.layer.cornerRadius = 25.0
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
     func touchesBagan(_ touches: Set<UITouch>, with event: UIEvent? ){
        self.view.endEditing(true)
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
