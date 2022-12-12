import Foundation


import UIKit

class EstablishmentSegmentedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableListEstablishment: UITableView!

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.5

      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let establishmentRow : EstablishmentRow = tableView.dequeueReusableCell(withIdentifier: "EstablishmentCell", for: indexPath) as! EstablishmentRow
        
        
        let establishment = DataManager.establishments[indexPath.section]

        
        establishmentRow.location.text = establishment.location
        establishmentRow.imageEstablishmnet.image = UIImage(named: establishment.image)
        establishmentRow.numberEmployees.text = "\(establishment.nEmployees) Employees"
        
        
        establishmentRow.imageEstablishmnet.layer.cornerRadius = 15
        
        
        establishmentRow.layer.cornerRadius = 20

        establishmentRow.layer.masksToBounds = true
        
        establishmentRow.layer.shadowColor = UIColor.black.cgColor
        establishmentRow.layer.shadowOpacity = 1
        establishmentRow.layer.shadowOffset = .zero
        establishmentRow.layer.shadowRadius = 10
        
        
        return establishmentRow
    }
    
}

