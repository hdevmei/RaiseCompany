import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var establishmentsView: UIView!
    @IBOutlet weak var employeesView: UIView!
    @IBOutlet weak var myProfileView: UIView!
    weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var prueba: UIButton!
    
    
    @IBAction func pruebaBoton(_ sender: UIButton) {
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
        
        
        
        if sender.selectedSegmentIndex == 0 {
            establishmentsView.isHidden = false
            employeesView.isHidden = true
            myProfileView.isHidden = true
        } else if sender.selectedSegmentIndex == 1 {
            establishmentsView.isHidden = true
            employeesView.isHidden = false
            myProfileView.isHidden = true
        } else if sender.selectedSegmentIndex == 2  {
            establishmentsView.isHidden = true
            employeesView.isHidden = true
            myProfileView.isHidden = false
        }
        
        
        
        
    }
    
    @objc func swipeFunc(gesture: UISwipeGestureRecognizer){
        
        
        if gesture.direction == .right  {
            print("Movimiento hacia Derecha")
            
        } else if gesture.direction == .left {
            print("Movimiento hacia la izquierda")
        }
        
    }
    
}




