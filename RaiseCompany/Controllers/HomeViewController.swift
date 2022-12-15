import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var establishmentsView: UIView!
    @IBOutlet weak var employeesView: UIView!
    @IBOutlet weak var myProfileView: UIView!
    weak var segmentedControl: UISegmentedControl!
    var currentTable : Int =  0
    
    @IBOutlet weak var prueba: UIButton!
    
    
    @IBAction func pruebaBoton(_ sender: UIButton) {
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
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeFunc(gesture: )))
        swipeRight.direction = .right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action:
                                                    #selector(swipeFunc (gesture: )) )
        swipeLeft.direction = .left
        self.view.addGestureRecognizer(swipeLeft)
    }
    

    @IBAction func SegmentedControl(_ sender: UISegmentedControl) {
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




