
import UIKit

class ContactDetailVC: UIViewController {
    
    @IBOutlet weak var contactDetailImage: UIImageView!
    @IBOutlet weak var contactNumberLabel: UILabel!
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactImageLabel: UILabel!
    
    let contactNumbers: [String] = [
        "123-456-7890", "234-567-8901", "345-678-9012", "456-789-0123", "567-890-1234",
        "678-901-2345", "789-012-3456", "890-123-4567", "901-234-5678", "012-345-6789",
        "111-222-3333", "222-333-4444", "333-444-5555", "444-555-6666", "555-666-7777",
        "666-777-8888", "777-888-9999", "888-999-0000", "999-000-1111", "000-111-2222",
        "123-321-4321", "234-432-5432", "345-543-6543", "456-654-7654", "567-765-8765",
        "678-876-9876", "789-987-0987"
    ]
    
    var indexCarry : IndexPath?
    var passContactName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: AppColors.linear1.rawValue)
        addDetails()
    }
    
    func addDetails(){
        if let name = passContactName {
            contactNameLabel.text = "Person Name : " + name
        }
        
        if let row = indexCarry?.row {
            contactNumberLabel.text = "Contact Number : " + contactNumbers[row]
        }
        
        contactDetailImage.backgroundColor = AppColors.getRandomColor()
        contactDetailImage.layer.cornerRadius = contactDetailImage.frame.width / 2
        
        if let contactName = passContactName {
            contactImageLabel.text = String(contactName.prefix(1))
        }
 
    }

}
