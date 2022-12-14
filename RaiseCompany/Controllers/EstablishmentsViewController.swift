

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
        establishmentCell.imageEstablishmnet.layer.cornerRadius = 10

        establishmentCell.location.text = establishment.location
        

        
        return establishmentCell
    }
    
     
     

    override func viewDidLoad() {
        super.viewDidLoad()
        establishmentsList.dataSource = self
        establishmentsList.delegate = self
    }


}
