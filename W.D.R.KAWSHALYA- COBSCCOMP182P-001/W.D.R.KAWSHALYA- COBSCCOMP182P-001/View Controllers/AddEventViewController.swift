//
//  AddEventViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 01/03/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit

class AddEventViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {

   
    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var descriptionEventTxt: UITextView!
    @IBOutlet weak var eventTitleTxt: UITextField!
    
    
  
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
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        
        eventImageView.image = image
        
        picker.dismiss(animated: true, completion: nil )
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil )
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    @IBAction func addEventBtn(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
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
