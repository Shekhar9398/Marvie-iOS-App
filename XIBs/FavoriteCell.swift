

import UIKit

class FavoriteCell: UICollectionViewCell {

    var movieStr : String?
    
    @IBOutlet weak var favoriteImageView: UIImageView!
    @IBOutlet weak var favoriteLabel: UILabel!
    @IBOutlet weak var addMovieButton : UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    static let identifier = "FavoriteCell"
    static func nib() -> UINib{
        return UINib(nibName: "FavoriteCell", bundle: nil)
    }
    
    @IBAction func addMovieButtonTapped(sender: UIButton){
    }
     
}
