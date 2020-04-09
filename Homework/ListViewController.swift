//
//  ListViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //StoryBordでのTableViewの宣言
     @IBOutlet weak var table: UITableView!
    
     var saveData: UserDefaults = UserDefaults.standard
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var textView: UITextView!
    var titleText: String!

     override func viewDidLoad() {
         super.viewDidLoad()
        
        table.delegate = self

        
         table.dataSource = self
         // Do any additional setup after loading the view.
         
         //homeworkNameArray =
     }
     
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
     }

     //セルの数　設定
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 20
     }

     //ID付きセルの取得、セル付属のTextLabelに「テスト」と表示
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = UITableViewCell()
         cell.textLabel?.text = ""
         return cell
     }
     
    @IBAction func edit() {
        
    }
   
    //セルを選択したらMemoViewControllerへ
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //セルの選択解除　1つのセルを選んでまた次回cellを選ぶ時前回に飛んだのを削除
        tableView.deselectRow(at: indexPath, animated: true)
        //memoの画面に遷移
        performSegue(withIdentifier: "toMemo", sender: indexPath.row)
    }
    //"toMemo"はsegueの名前
    
    //画面遷移
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMemo" {
            let MemoVC: MemoViewController = segue.destination as! MemoViewController
            
             //senderははAnyでInt整数
            MemoVC.number = sender as? Int
            
        }
    }
    
}
