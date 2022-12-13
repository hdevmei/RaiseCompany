//
//  AddDepartmentViewController.swift
//  RaiseCompany
//
//  Created by mei_yocontrolo on 13/12/2022.
//

import UIKit

class AddDepartmentViewController: UIViewController {

    
    @IBAction func cancelButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
