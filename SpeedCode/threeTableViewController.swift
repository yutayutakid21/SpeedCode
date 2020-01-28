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
    
    var indexNumber = 0
    
    
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let stationLabel = cell.contentView.viewWithTag(1) as! UILabel
        stationLabel.text = self.stationArray[indexPath.row]
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        indexNumber = indexPath.row
        
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "next" {
            let nextVC:threeNextViewController = segue.destination as! threeNextViewController
            
            nextVC.passedText = stationArray[indexNumber]
        }
    }

}
