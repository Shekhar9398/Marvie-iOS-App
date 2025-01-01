
import UIKit

class ContactCell: UITableViewCell {

    
    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var contactLabel: UILabel!
    
    @IBOutlet weak var capitalLetterLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    static let identifier = "ContactCell"
    static func nib() -> UINib{
        return UINib(nibName: "ContactCell", bundle: nil)
    }
    
    private func setupCell(){
        self.backgroundColor = .clear
        self.contactImageView.layer.cornerRadius = contactImageView.frame.size.width / 2
        self.selectionStyle = .none
        
        //custom white arrow indicator
            let arrowImageView = UIImageView(image: UIImage(systemName: "chevron.right"))
            arrowImageView.tintColor = .white
            self.accessoryView = arrowImageView
    }
    
}
