//
//  NewMemoViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class NewMemoViewController: UIViewController {

      var saveData: UserDefaults = UserDefaults.standard
     
     @IBOutlet var titleTextField: UITextField!
     @IBOutlet var contentTextView: UITextView!
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         titleTextField.text = saveData.object(forKey: "title") as? String
         contentTextView.text = saveData.object(forKey: "content") as? String
         // Do any additional setup after loading the view.
     }
     
    @IBAction func saveMemo() {
        saveData.set(titleTextField.text, forKey: "title")
        saveData.set(contentTextView.text, forKey: "content")
     }
     
     @IBAction func cancel() {
         self.dismiss(animated: true, completion: nil)
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
