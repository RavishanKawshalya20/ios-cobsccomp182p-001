//
//  RegisterViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 29/02/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import Foundation



class RegisterViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var fbUrlTxt: UITextField!
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var regBtn2: UIButton!
    @IBOutlet weak var regbtn: UIImageView!
  //  @IBOutlet weak var imageView: UIImageView!
   // @IBOutlet weak var firstNameTxt: UITextField!
    @IBOutlet weak var fnameTxt: UITextField!
    
    //@IBOutlet weak var firstNametxt: UITextField!
    @IBOutlet weak var confPasswordTxt: UITextField!
    @IBOutlet weak var passowrdTxr: UITextField!
    @IBOutlet weak var confirmPasswordTxt: UITextField!
    @IBOutlet weak var lastNameTxt: UITextField!
    
    
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var phoneNumberTxt: UITextField!
    
    
        
    @IBAction func uploadImageBtn(_ sender: Any) {
        
        let imagePickerController = UIImagePickerController()
        
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose Image Source", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default , handler: { (UIAlertAction) in
            
            if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            
            imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true, completion: nil)
            }
            else{
                
               print("Camera Not Available")
                
              
            }
            
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default , handler: { (UIAlertAction) in
            imagePickerController.sourceType = .photoLibrary
            self.present(actionSheet, animated: true, completion: nil)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: nil ))
        
        self.present(actionSheet, animated: true, completion: nil)
        
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        
        ImageView.image = image
        
        picker.dismiss(animated: true, completion: nil )
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil )
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
    
//    }
    
    
    
    @IBAction func registerBtn(_ sender: Any) {
   
        
        if fnameTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || lastNameTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            userNameTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            phoneNumberTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passowrdTxr.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            confPasswordTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            
            let alert = UIAlertController(title: "Alert", message: "Please fill all the fields", preferredStyle: .alert)
            
                    let alertAction = UIAlertAction(title: "Ok", style : .default ,handler : nil)
            
                    let cancelAction = UIAlertAction(title: "Cancel", style : .cancel ,handler : nil)
            
                    alert.addAction(alertAction)
                    alert.addAction(cancelAction)
            
                    self.present(alert, animated: true, completion: nil)
            
        }
        
        else{
        let cleanedPassword = passowrdTxr.text!.trimmingCharacters(in: .whitespacesAndNewlines)
 
        func isPasswordValid(_ password : String) -> Bool{
            let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
            return passwordTest.evaluate(with: password)
        
        }
        
        if isPasswordValid(cleanedPassword) == false{
            
            let alert = UIAlertController(title: "Alert", message: "Password at least contain 8 charactors, Contain special charactor and number", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "Ok", style : .default ,handler : nil)
            
            let cancelAction = UIAlertAction(title: "Cancel", style : .cancel ,handler : nil)
            
            alert.addAction(alertAction)
            alert.addAction(cancelAction)
            
            self.present(alert, animated: true, completion: nil)
        }
        
        
        let fname = fnameTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let lname = lastNameTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let uname = userNameTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let pnum = phoneNumberTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let fb = fbUrlTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let pwd = passowrdTxr.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        //let image = imageView.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().createUser(withEmail: uname, password: pwd ) { user, error in
            
            
            if error == nil && uname != nil{
                
              print("User Created")
                
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = uname
                changeRequest?.commitChanges{ error in
                
                    if error == nil{
                        print("User Display Name Changed")
                    }
                
                }
                
            }
            else{
                
                print("Error Creating User")
                self.dismiss(animated: false, completion: nil)
                
//                let db = Firestore.firestore()
//
//                db.collection("users").addDocument(data: ["firstname" : fname, "lastname": lname]) { (error) in}
//
//                if error != nil{
//                    print("error")
//                }
            }
         self.transitionToHome()
            
        }
        
    }
}
    
    func showError(_ message:String){
        
//       errorLabel.text = message
//        errorLabel.alpha = 1
        
    }
    
    func transitionToHome() {
        ///
    }
    
    
    
    
    

    override func viewDidLoad() {
        
//        self.regBtn2.layer.cornerRadius = 25
//        self.userNameTxt.layer.cornerRadius = 10
//        self.fnameTxt.layer.cornerRadius = 10
//        self.lastNameTxt.layer.cornerRadius = 10
//        self.phoneNumberTxt.layer.cornerRadius = 10
//        self.passowrdTxr.layer.cornerRadius = 10
//        self.confPasswordTxt.layer.cornerRadius = 10
//         self.fbUrlTxt.layer.cornerRadius = 10
//        self.ImageView.layer.cornerRadius = 10
        
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view.
        
        setUpElements()
        
    }
    
    func setUpElements(){
        
        
        //errorLabel.alpha = 0
        
        Utilities.styleTextField(fnameTxt)
        Utilities.styleTextField(lastNameTxt)
        Utilities.styleTextField(userNameTxt)
        Utilities.styleTextField(phoneNumberTxt)
        Utilities.styleTextField(passowrdTxr)
        Utilities.styleTextField(confPasswordTxt)
        Utilities.styleFilledButton(regBtn2)
        Utilities.styleTextField(fbUrlTxt)
        
    }
    
    
    
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
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
