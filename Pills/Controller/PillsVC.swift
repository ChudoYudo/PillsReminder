//
//  PillsVC.swift
//  Pills
//
//  Created by NG on 12/4/17.
//  Copyright © 2017 NG. All rights reserved.
//

import UIKit
import Firebase
import Foundation

class PillsVC: UIViewController, UITableViewDataSource , UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
            tableView.insertRows(at: [IndexPath(row: SaveUserSignInfo.mainUser.getPillsNum() - 1, section: 0)], with: .automatic)
            dismiss(animated: true, completion: nil)
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView : UITableView, numberOfRowsInSection section : Int ) -> Int {
        return SaveUserSignInfo.mainUser.getPillsNum()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PillCell") as? PillCell {
            let label = cell.viewWithTag(1000) as! UILabel
            label.text = SaveUserSignInfo.mainUser.getPills()[indexPath.row].getPillName()
            
            let pill = SaveUserSignInfo.mainUser.getPills()[indexPath.row]
            cell.updateView(pill: pill)
            return cell
        }else {
            return PillCell()
        }
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            var userPills = SaveUserSignInfo.mainUser.getPills()
            userPills.remove(at: indexPath.row)
            SaveUserSignInfo.mainUser.setPills(pills: userPills)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
