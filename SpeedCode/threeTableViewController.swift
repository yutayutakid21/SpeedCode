//
//  threeTableViewController.swift
//  SpeedCode
//
//  Created by 近藤宏輝 on 2020/01/28.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit
import AMTabView

class threeTableViewController: UIViewController, TabItem, UITableViewDelegate,UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var stationArray = ["新宿","渋谷","恵比寿","代々木","高輪ゲートウェイ"]
    
    
    //これ、昨日話をしていたcomputed propertyですね
    var tabImage: UIImage? {
          return UIImage(named: "tab3")
        }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    

}
