//
//  NavigationViewController.swift
//  W.D.R.KAWSHALYA- COBSCCOMP182P-001
//
//  Created by Ravishan Kawshalya on 03/03/2020.
//  Copyright © 2020 Ravishan Kawshalya. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    @IBAction func signOutBtn(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func userSignOut(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func addEventSignOut(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
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
