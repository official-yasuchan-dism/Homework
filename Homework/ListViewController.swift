//
//  ListViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//
import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var subjectString: String = ""
    let ud = UserDefaults.standard
    var hwArray: [[String]] = []
    
    //StoryBordでのTableViewの宣言
    @IBOutlet weak var table: UITableView!
    //@IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        //searchBar.delegate = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemoCell")
        let titleLabel = cell?.viewWithTag(1) as! UILabel
        let dateLabel = cell?.viewWithTag(2) as! UILabel
        let memoLabel = cell?.viewWithTag(3) as! UILabel
        
        titleLabel.text = hwArray[indexPath.row][0]
        dateLabel.text = hwArray[indexPath.row][1]
        memoLabel.text = hwArray[indexPath.row][2]
        
        //cell.textLabel?.text = hwArray[indexPath.row][0]
        return cell!
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(subjectString)
        self.navigationItem.title = subjectString
        hwArray = (ud.object(forKey: subjectString) as? [[String]] ?? [])
        print(hwArray)
        
        //毎回戻ったらreload
        table.reloadData()
     }
    
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
     }

    // 検索バー編集開始時にキャンセルボタン有効化
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar){
//        searchBar.setShowsCancelButton(true, animated: true)
//    }
//    
//    // キャンセルボタンでキャセルボタン非表示
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        searchBar.resignFirstResponder()
//        searchBar.setShowsCancelButton(false, animated: true)
//    }
//
//    // エンターキーで検索
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
//        guard let searchText = searchBar.text else {
//                   return
//               }
//               print(searchText)
//       }
//    
//    // 入力された文字出力
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        print(searchText)
//    }
    
    //セルの編集許可
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    //スワイプしたセルを削除
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            hwArray.remove(at: indexPath.row)
            ud.set(hwArray, forKey: subjectString)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
    }
    //セルの数　設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hwArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    //NewViewControllerに遷移
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNewVC" {
            let vc = segue.destination as! NewViewController
            vc.subjectString = self.subjectString
        }
    }
}
