import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tableListEstablishment: UITableView!

    
    let establishments: [Establishment] =
        [Establishment(location: "Av. Premios Nobel, 3, 28850 Torrejón de Ardoz, Madrid", image: "oasiz", mediaProvisional: 3.5, benefits: 33980, losses: 25456 , nEmployees: 12), Establishment (location: "Av. Premios Nobel, 3, 28850 Torrejón de Ardoz, Madrid", image: "oasiz", mediaProvisional: 3.5, benefits: 33980, losses: 25456 , nEmployees: 12) , Establishment (location: "Av. Premios Nobel, 3, 28850 Torrejón de Ardoz, Madrid", image: "oasiz", mediaProvisional: 3.5, benefits: 33980, losses: 25456 , nEmployees: 12)
    ]
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return establishments.count

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.5

      }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let establishmentRow : EstablishmentRow = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EstablishmentRow
        
        
        let establishment = establishments[indexPath.section]

        
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
    

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableListEstablishment.dataSource = self
        tableListEstablishment.delegate = self
        
        
        /*
        segmentedControl.layer.shadowColor = UIColor.black.cgColor
        segmentedControl.layer.shadowOpacity = 1
        segmentedControl.layer.shadowOffset = .zero
        segmentedControl.layer.shadowRadius = 10
        
        
        segmentedControl.layer.shadowPath = UIBezierPath(rect: segmentedControl.bounds).cgPath
        segmentedControl.layer.shouldRasterize = true
        segmentedControl.layer.rasterizationScale = UIScreen.main.scale
         
         */
    }

    

}

