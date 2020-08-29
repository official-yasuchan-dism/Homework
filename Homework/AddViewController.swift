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
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var colorButton: UIButton!
    
    var saveData: UserDefaults = UserDefaults.standard
    var subjectsArray: [String] = []
    
    private var titleText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorButton.layer.cornerRadius = 10.0
        
        // Do any additional setup after loading the view.
        
        if saveData.object(forKey: "title") != nil {
            subjectsArray = saveData.object(forKey: "title") as! [String]
        }
        
    }
        
    @IBAction func addSubject() {
        subjectsArray.append(titleTextField.text!)
        saveData.set(subjectsArray, forKey: "title")
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancel() {
           
             let alert = UIAlertController(title: "追加が完了していません", message: "削除して戻りますか", preferredStyle: .alert)
                   let cancelAction = UIAlertAction(title: "キャンセル", style: .default)
                   let okAction = UIAlertAction(title: "削除", style: .destructive) { (action: UIAlertAction) in
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
