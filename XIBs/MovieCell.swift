
import UIKit

class MovieCell: UICollectionViewCell {

    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = .clear
        self.movieImageView.contentMode = .scaleAspectFit
        self.clipsToBounds = true
    }

    static let identifier = "MovieCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MovieCell", bundle: nil)
    }
}
