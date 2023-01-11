

import UIKit

class EstablishmentsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var establishmentsList: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.establishments.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let establishmentCell : EstablishmentRow = tableView.dequeueReusableCell(withIdentifier: "EstablishmentCell", for: indexPath) as! EstablishmentRow
        
        
        let establishment = DataManager.establishments[indexPath.row]
        
        
        establishmentCell.imageEstablishmnet.image = UIImage(named: establishment.image)
/*
        establishmentCell.imageEstablishmnet.layer.shadowColor = UIColor.blue.cgColor
        establishmentCell.imageEstablishmnet.layer.shadowOffset = CGSize(width: 2.0, height: 6.0)
        establishmentCell.imageEstablishmnet.layer.shadowOpacity = 1
    establishmentCell.imageEstablishmnet.layer.masksToBounds = true
        establishmentCell.imageEstablishmnet.layer.shadowRadius = 5
 */
        establishmentCell.imageEstablishmnet.layer.cornerRadius = 10

        
        establishmentCell.location.text = establishment.location
      establishmentCell.benefitsButton.setTitle("  ▲ \(establishment.benefits) $", for: .normal)
        establishmentCell.lossesButton.setTitle("  ▼ \(establishment.losses) $", for: .normal)
        
        
        
        establishmentCell.numberEmployees.text = String(establishment.nEmployees) + " Employees"
        
    

        
        establishmentCell.background.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.4).cgColor
        establishmentCell.background.layer.shadowOffset = CGSize(width: 2.0, height: 6.0)
        establishmentCell.background.layer.shadowOpacity = 1
        establishmentCell.background.layer.masksToBounds = false
        establishmentCell.background.layer.cornerRadius = 15
        
                
        return establishmentCell
    }
    
    //Navegation to detailed establishment view
   
    
    /*
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailedEstablishmentViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailedEstablishmentViewController"{
            let destinationVC = segue.destination as? DetailedEstablishmentViewController
        }
        
        
    }

  */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        establishmentsList.dataSource = self
        establishmentsList.delegate = self
        
        
    }
    
    
}
