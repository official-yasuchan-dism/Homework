//
//  AddViewController.swift
//  Homework
//
//  Created by Yuma on 2020/05/10.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func cancel() {
           
             let alert = UIAlertController(title: "追加が完了していません", message: "このまま戻りますか？", preferredStyle: .alert)
                   let cancelAction = UIAlertAction(title: "キャンセル", style: .default)
                   let okAction = UIAlertAction(title: "OK", style: .destructive) { (action: UIAlertAction) in
                       self.dismiss(animated: true, completion: nil)
                       //OKボタンで前の画面に戻る
                   }
                   alert.addAction(cancelAction)
                   alert.addAction(okAction)
                   present(alert, animated: true, completion: nil)
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
