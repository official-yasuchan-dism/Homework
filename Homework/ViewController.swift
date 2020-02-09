//
//  ViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func mathematics() {
        
    }

    @IBAction func japanese() {
        
    }
    
    @IBAction func english() {
    
    }

    @IBAction func science() {
        
    }
    
    @IBAction func socialstudies() {
    
    }
    
    @IBAction func pe() {
        
    }
    
    @IBAction func art() {
        
    }
    
    @IBAction func music() {
        
    }
    
    @IBAction func technology() {
        
    }
    
    @IBAction func homeeconomics() {
        
    }
    
    @IBAction func other() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ListViewController
        vc.titleText = segue.identifier!
    }
}

