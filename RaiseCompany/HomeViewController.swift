import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var establishmentsView: UIView!
    @IBOutlet weak var employeesView: UIView!
    @IBOutlet weak var myProfileView: UIView!
    weak var segmentedControl: UISegmentedControl!
    @IBAction func SegmentedControl(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            establishmentsView.isHidden = false
            employeesView.isHidden = true
            myProfileView.isHidden = true
        } else if sender.selectedSegmentIndex == 1 {
            establishmentsView.isHidden = true
            employeesView.isHidden = false
            myProfileView.isHidden = true
        } else if sender.selectedSegmentIndex == 2 {
            establishmentsView.isHidden = true
            employeesView.isHidden = true
            myProfileView.isHidden = false
        }
    }
    
}
    


 
