//
//  ViewController.swift
//  callBacks
//
//  Created by Alex Cruz on 7/1/18.
//  Copyright © 2018 callBacks. All rights reserved.
////

import UIKit

class ViewController: UIViewController {

    @IBOutlet var showInfoLabel: UILabel!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc2 = segue.destination as? ViewController2 {
            vc2.onSave = onSave
        }
    }
    

    func onSave(_ Data: String) -> () {
        showInfoLabel.text = Data
    }
    
    @IBAction func goToNextView(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNextView", sender: nil)
    }
    
}

