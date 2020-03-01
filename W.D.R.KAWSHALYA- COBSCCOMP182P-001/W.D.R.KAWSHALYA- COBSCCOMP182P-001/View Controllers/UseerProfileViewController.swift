//
//  UseerProfileViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 01/03/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit

class UseerProfileViewController: UIViewController {

    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var editBtn: UIButton!
    @IBOutlet weak var fbUrl: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    
    @IBAction func EditButton(_ sender: Any) {
        
        
    }
    override func viewDidLoad() {
        
//        self.editBtn.layer.cornerRadius = 25.0
//        self.fname.layer.cornerRadius = 25.0
//        self.lname.layer.cornerRadius = 25.0
//        self.fbUrl.layer.cornerRadius = 25.0
//        self.phone.layer.cornerRadius = 25.0
//        self.editBtn.layer.cornerRadius = 25.0
//        self.userImage.layer.cornerRadius = 25.0
        
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
