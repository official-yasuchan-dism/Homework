//
//  ListViewController.swift
//  Homework
//
//  Created by Yuma on 2020/02/09.
//  Copyright © 2020 Yuma. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = ""
        return cell
    }
    
    
    //StoryBordでのTableViewの宣言
    @IBOutlet weak var table: UITableView!
    
     override func viewDidLoad() {
         super.viewDidLoad()
        
     }
     
     override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
     }
    
    //セルの数　設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
}
