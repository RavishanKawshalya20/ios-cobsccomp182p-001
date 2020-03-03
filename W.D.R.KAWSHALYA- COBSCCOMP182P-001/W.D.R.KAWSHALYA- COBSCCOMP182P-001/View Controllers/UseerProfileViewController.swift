//
//  UseerProfileViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 01/03/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit
import FirebaseAuth

class UseerProfileViewController: UIViewController {

    @IBOutlet weak var editButton: UIButton!
  //  @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var editBtn: UIButton!
    //@IBOutlet weak var fbUrl: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var edirButton2: UIButton!
   // @IBOutlet weak var editButton2: UIButton!
    @IBOutlet weak var phonenum: UITextField!
    
    @IBOutlet weak var fbURL: UITextField!
    
    
    
   
    
    @IBAction func EditButton(_ sender: Any) {
        
        
    
        
    }
    override func viewDidLoad() {
//
//        self.editButton.layer.cornerRadius = 10
//        self.fname.layer.cornerRadius = 10
//        self.lname.layer.cornerRadius = 10
//        self.fbURL.layer.cornerRadius = 10
//        self.phonenum.layer.cornerRadius = 10
//        self.edirButton2.layer.cornerRadius = 10
//        self.userImage.layer.cornerRadius = 10
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func userSignOutBtn(_ sender: Any) {
        
    dismiss(animated: true, completion: nil)
      
        
    }
    
    func setUpElements(){
        
        
    
        
        Utilities.styleTextField(fname)
        Utilities.styleTextField(lname)
        Utilities.styleTextField(username)
        Utilities.styleTextField(phonenum)
        Utilities.styleTextField(fbURL)
        Utilities.styleFilledButton(editBtn)
        
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
