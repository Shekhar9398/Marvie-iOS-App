
import UIKit

class ChatVC: UIViewController {

    
    @IBOutlet weak var chatTableView: UITableView!
    
    let contactNames : [String] = ["Aarav", "Bella", "Caleb", "Dhruv", "Elina", "Finn", "Grace", "Hazel", "Ishan", "Jonah", "Kiara", "Liam", "Maya", "Noah", "Olivia", "Priya", "Quinn", "Rohan", "Sienna", "Tara", "Uma", "Vihaan", "Willow", "Xavier", "Yara", "Zara"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
}

extension ChatVC : UITableViewDelegate, UITableViewDataSource{
    
    private func setupTable(){
        chatTableView.delegate = self
        chatTableView.dataSource = self
        chatTableView.register(ContactCell.nib(), forCellReuseIdentifier: ContactCell.identifier)
        chatTableView.backgroundColor = .clear
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = chatTableView.dequeueReusableCell(withIdentifier: ContactCell.identifier) as! ContactCell
       
        cell.contactLabel.text = contactNames[indexPath.row]
        cell.capitalLetterLabel.text = String(contactNames[indexPath.row].prefix(1))
        cell.contactImageView.backgroundColor = AppColors.getRandomColor()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContactDetailVC") as! ContactDetailVC
        
        //Passing Data to detail VC
        vc.passContactName = contactNames[indexPath.row]
        vc.indexCarry = indexPath
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
