//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Adam Nowak on 29.06.2015.
//  Copyright (c) 2015 Nowak Adam. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    var detailTaskModel : TaskModel!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    var mainVC: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.taskTextField.text = detailTaskModel.task
        self.subtaskTextField.text = detailTaskModel.subTask
        self.dueDatePicker.date = detailTaskModel.date
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
       self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func doneBarButtonItemPressed(sender: UIBarButtonItem) {
        
        var task = TaskModel(task:taskTextField.text, subTask:subtaskTextField.text, date:dueDatePicker.date, completed:false)
        mainVC.baseArray[0][mainVC.tableView.indexPathForSelectedRow()!.row] = task

        
        self.navigationController?.popViewControllerAnimated(true)
    }
}
