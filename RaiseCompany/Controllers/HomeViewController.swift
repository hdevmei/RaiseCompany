import UIKit

class HomeViewController: UIViewController, UISearchBarDelegate {
    @IBOutlet weak var establishmentsView: UIView!
    @IBOutlet weak var employeesView: UIView!
    @IBOutlet weak var myProfileView: UIView!
    weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet var segmentedControlOutlet: UIView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    var currentTable : Int =  0
        
    
    
    @IBAction func addNew(_ sender: UIButton) {
        if currentTable == 0 {
            performSegue(withIdentifier: "gotToAddEstablishment", sender: nil)
        } else if currentTable == 1 {
            performSegue(withIdentifier: "goToAddEmployees", sender: nil)
        } else if currentTable == 2 {
            performSegue(withIdentifier: "goToAddDepartment", sender: nil)
        }
    }
    
    

    override func viewDidLoad(){
        super.viewDidLoad()
        
//        searchBar.delegate = self
        

        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeFunc(gesture: )))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action:
                                                    #selector(swipeFunc (gesture: )) )
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
        
//        must fixed appear fisrt container view
        if currentTable == 0 {
            establishmentsView.isHidden = false
            employeesView.isHidden = true
            myProfileView.isHidden = true
        } else if currentTable == 1 {
            establishmentsView.isHidden = true
            employeesView.isHidden = false
            myProfileView.isHidden = true
        } else if currentTable == 2 {
            establishmentsView.isHidden = true
            employeesView.isHidden = true
            myProfileView.isHidden = false
        }
         
        
      
    }
    

    @IBAction func SegmentedControl(_ sender: UISegmentedControl) {
        
        /*
        sender.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)
        sender.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: UIControl.State.normal)
        */
        
        sender.selectedSegmentTintColor = UIColor.blue
        
        sender.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4).cgColor
        sender.layer.shadowOffset = CGSize(width: 2.0, height: 6.0)
        sender.layer.shadowOpacity = 1
        sender.layer.masksToBounds = false
        
        if sender.selectedSegmentIndex == 0 {
            establishmentsView.isHidden = false
            employeesView.isHidden = true
            myProfileView.isHidden = true
            currentTable = 0
        } else if sender.selectedSegmentIndex == 1 {
            establishmentsView.isHidden = true
            employeesView.isHidden = false
            myProfileView.isHidden = true
            currentTable = 1
        } else if sender.selectedSegmentIndex == 2  {
            establishmentsView.isHidden = true
            employeesView.isHidden = true
            myProfileView.isHidden = false
            currentTable = 2
        }
    }
    
    @objc func swipeFunc(gesture: UISwipeGestureRecognizer){
        
        if gesture.direction == .right  {
            print("Movimiento hacia la Derecha")
            
        } else if gesture.direction == .left {
            print("Movimiento hacia la izquierda")
        }
        
    }
    
}




