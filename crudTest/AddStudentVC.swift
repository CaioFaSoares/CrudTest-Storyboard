//
//  AddStudentVC.swift
//  crudTest
//
//  Created by Caio Soares on 03/10/22.
//

import UIKit

class AddStudentVC: UIViewController {
    
    @IBOutlet weak var txtName:      UITextField!
    @IBOutlet weak var txtStd:       UITextField!
    @IBOutlet weak var txtSchool:    UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func AddOnClick(_ sender: Any) {
        if let name = txtName.text,
           let std = txtStd.text,
           let school = txtSchool.text {
            
            let newStudent = Student(context: DBManager.share.context)
            newStudent.name     = name
            newStudent.std      = std
            newStudent.school   = school
            
            DBManager.share.saveContext()
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
}
