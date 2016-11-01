//
//  TasksTableViewController.swift
//  HackNTU-Demo
//
//  Created by SEAN HD on 2016/11/1.
//  Copyright © 2016年 Appar. All rights reserved.
//

import UIKit
import RealmSwift

class TasksTableViewController: UITableViewController {
    
    var listData: [String]?
    @IBOutlet weak var addTask: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //設定TableViewCell
        self.tableView.register(CustomTableViewCell.classForCoder(), forCellReuseIdentifier: "customCell")
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //把資料讀出來
        let realm = try! Realm()
        
        let allTasks = realm.objects(Task.self)
        print(allTasks)
    }
    
    private func setup() {
        self.addTask.target = self
        self.addTask.action = #selector(TasksTableViewController.addTaskAction)
    }
    
    //呼叫轉畫面
    func addTaskAction() {
        self.performSegue(withIdentifier: "presentCreateTask", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listData!.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell

        // Configure the cell...
        
        cell.textLabel?.text = listData![indexPath.row]

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
