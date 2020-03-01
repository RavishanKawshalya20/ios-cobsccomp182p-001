//
//  RegisterViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 29/02/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var fbUrlTxt: UITextField!
    
    @IBOutlet weak var regBtn2: UIButton!
    @IBOutlet weak var regbtn: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstNameTxt: UITextField!
    
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
        
        imageView.image = image
        
        picker.dismiss(animated: true, completion: nil )
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil )
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
    
//    }
    
    
    
    @IBAction func registerButton(_ sender: Any) {
       
        let alert = UIAlertController(title: "Alert", message: "Do you want To save?", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Ok", style : .default ,handler : nil)

        let cancelAction = UIAlertAction(title: "Cancel", style : .cancel ,handler : nil)
        
        alert.addAction(alertAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated: true, completion: nil)

        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.regBtn2.layer.cornerRadius = 23
        self.userNameTxt.layer.cornerRadius = 10
// self.firstNameTxt.layer.cornerRadius = 10
        self.lastNameTxt.layer.cornerRadius=10
        self.phoneNumberTxt.layer.cornerRadius = 10
        self.passowrdTxr.layer.cornerRadius = 10
        self.confPasswordTxt.layer.cornerRadius = 10
        
        
        
        // Do any additional setup after loading the view.
        
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
