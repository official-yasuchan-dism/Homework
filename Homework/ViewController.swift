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
    //@IBOutlet weak var plusButton: UIButton!
    //@IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        mathematicsButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        japaneseButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        englishButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        scienceButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        socialstudiesButton.layer.cornerRadius = 10.0 // 角丸のサイズ
        //plusButton.imageView?.contentMode = .scaleAspectFit
        //plusButton.contentHorizontalAlignment = .fill
        //plusButton.contentVerticalAlignment = .fill
        //plusボタンのimageをボタンの大きさに合わせて表示
        
        //navigationController?.setNavigationBarHidden(true, animated: false)
        //Navigation barの非表示
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
    
    //@IBAction func edit() {
        
    //}

    //@IBAction func plus() {
        
    //}
    
    //override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //    let vc = segue.destination as! ListViewController
    //    vc.titleText = segue.identifier!
}

//Navigation barの色
