//
//  AddEventViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 01/03/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import Foundation
import FirebaseStorage
import FirebaseDatabase

class AddEventViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var errorLableevent: UILabel!
    @IBOutlet weak var addeventBtn: UIButton!
    
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var descriptionEventTxt: UITextView!
    @IBOutlet weak var eventTitleTxt: UITextField!
    
      //var ref = FIRDatabaseRefernce?
  

    
    
    @IBAction func insertEventImageBtn(_ sender: Any) {
        
        
        let imagePickerController = UIImagePickerController()
        
        let actionSheet2 = UIAlertController(title: "Photo Source", message: "Capture Image", preferredStyle: .actionSheet)
        
        actionSheet2.addAction(UIAlertAction(title: "Camera", style: .default , handler: { (UIAlertAction) in
            
            if(UIImagePickerController.isSourceTypeAvailable(.camera)){
                
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }
            else{
                
                print("Camera Not Available")
            }
            
            
        }))
        
//        actionSheet2.addAction(UIAlertAction(title: "Photo Library", style: .default , handler: { (UIAlertAction) in
//            imagePickerController.sourceType = .photoLibrary
//            self.present(actionSheet2, animated: true, completion: nil)
//        }))
        
        actionSheet2.addAction(UIAlertAction(title: "Cancel", style: .cancel , handler: nil ))
        
        self.present(actionSheet2, animated: true, completion: nil)
        
    }
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
//        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
//
//        eventImageView.image = image
//
//        picker.dismiss(animated: true, completion: nil )
        
        if  let imageview2 = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            eventImageView.image = imageview2
        }
        
        dismiss(animated: true, completion: nil )
    
    
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func eventSignOutBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        //
        //        let mainmenu = self.storyboard?.instantiateViewController(withIdentifier: Constants.Storyboard.signOutController) as? ViewController
        //
        //        self.view.window?.rootViewController = mainmenu
        //        self.view.window?.makeKeyAndVisible()
    }
    
    
     func validateFields() -> String? {
    
        if eventTitleTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || descriptionEventTxt.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill all the fields"
    }
        
        return nil
    }
    
    @IBAction func addEventBtn(_ sender: Any) {
        
        
        let error = validateFields()
        
        if error != nil{
            
            showError("Please Check Again")
        }
            
        else{
            
            let title = eventTitleTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let des = descriptionEventTxt.text!.trimmingCharacters(in: .whitespacesAndNewlines)
//
//
//            let ref = FIRDataBase.database().reffernce()
//            let userReffernce = ref.chaild("events")
//
//            Auth.auth().setValue("title": title, "description": des ) { ( result, err ) in
//
//
//                //            if error == nil && uname != nil && lname != nil && fname != nil && pnum != nil && fb != nil && pwd != nil{
//
//                if err != nil{
//
//                    self.showError("Error Creating Event")
//                }
//                   }
//                else{
//
//                    print("Error Creating Event")
//                    self.dismiss(animated: false, completion: nil)
//
//                    let db = Firestore.firestore()
//
//                    db.collection("events").addDocument(data: ["title" : title, "description": des, "eid": result!.events.eid]) { (error) in
//
//                        if error != nil{
//
//                            self.showError("Error Saving User Data")
//                        }
//                    }
//                    self.transitionToHome()
//
//                }
            
        
            }
                       
                
        
    }
    
    
    func showError(_ message:String){
        
        errorLableevent.text = message
        errorLableevent.alpha = 1
        
    }
    
    override func viewDidLoad() {
        
//        self.addeventBtn.layer.cornerRadius = 25.0
//        self.eventTitleTxt.layer.cornerRadius = 10
//        self.descriptionEventTxt.layer.cornerRadius = 10
//        super.viewDidLoad()
//
//        self.eventImageView.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    
    
    func setUpElements(){
        
        errorLableevent.alpha = 0
    
       
    
            
            descriptionEventTxt.layer.cornerRadius = 15
            Utilities.styleFilledButton(addeventBtn)
         Utilities.styleTextField(eventTitleTxt)

        
        
        
        
        
        
        
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
