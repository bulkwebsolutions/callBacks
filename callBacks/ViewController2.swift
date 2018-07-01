//
//  ViewController2.swift
//  callBacks
//
//  Created by Alex Cruz on 7/1/18.
//  Copyright © 2018 callBacks. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var onSave: ((_ data: String) -> ())?
    
    
    @IBOutlet var infoField: UITextField!
    
    
    
    @IBAction func saveInfo(_ sender: UIButton) {
        if infoField.text?.count != 0 {
            onSave?(infoField.text!)
            dismiss(animated: true, completion: nil)
        }
    }
    
    

}
