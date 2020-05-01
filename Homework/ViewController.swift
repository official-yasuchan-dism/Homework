//
//  ViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mathematicsButton: UIButton!
    @IBOutlet weak var japaneseButton: UIButton!
    @IBOutlet weak var englishButton: UIButton!
    @IBOutlet weak var scienceButton: UIButton!
    @IBOutlet weak var socialstudiesButton: UIButton!
    @IBOutlet weak var peButton: UIButton!
    @IBOutlet weak var artButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var technologyButton: UIButton!
    @IBOutlet weak var homeeconomicsButton: UIButton!
    @IBOutlet weak var otherButton: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
        mathematicsButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        japaneseButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        englishButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        scienceButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        socialstudiesButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        peButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        artButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        musicButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        technologyButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        homeeconomicsButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        otherButton.layer.cornerRadius = 10.0 // 角丸のサイズ
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
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    let vc = segue.destination as! ListViewController
    //    vc.titleText = segue.identifier!
    }

