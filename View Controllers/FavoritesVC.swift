
import UIKit

class FavoritesVC: UIViewController {

    @IBOutlet weak var favoriteCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFavoriteCell()
    }
    
    private func setupFavoriteCell(){
        favoriteCollection.delegate = self
        favoriteCollection.dataSource = self
        favoriteCollection.register(FavoriteCell.nib(), forCellWithReuseIdentifier:FavoriteCell.identifier)
    }

}

extension FavoritesVC : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = favoriteCollection.dequeueReusableCell(withReuseIdentifier: FavoriteCell.identifier, for: indexPath) as! FavoriteCell
        cell.favoriteLabel.text = "My Favorites"
        cell.favoriteImageView.image = UIImage(systemName: "cart")
        return cell
    }
}

