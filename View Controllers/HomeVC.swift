import UIKit
import SDWebImage

class HomeVC: UIViewController {

    @IBOutlet weak var movieCollectionView: UICollectionView!
    
    let viewModel = MovieViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        fetchMoviePosters()
    }
    
    private func fetchMoviePosters() {
        viewModel.onMoviesUpdated = { [weak self] in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.movieCollectionView.reloadData()
            }
        }
        viewModel.fetchMovies()
    }

    private func setupCollectionView() {
        movieCollectionView.delegate = self
        movieCollectionView.dataSource = self
        movieCollectionView.register(MovieCell.nib(), forCellWithReuseIdentifier: MovieCell.identifier)
        movieCollectionView.backgroundColor = .clear
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCell.identifier, for: indexPath) as? MovieCell else {
            return UICollectionViewCell()
        }
    
        let movie = viewModel.movies[indexPath.item]
        if let imageUrl = URL(string: movie.posterURL) {
            cell.movieImageView.sd_setImage(with: imageUrl, placeholderImage: UIImage(named: "placeholder"))
        } else {
            cell.movieImageView.image = UIImage(named: "placeholder")
        }
        cell.movieLabel.text = movie.title
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let availableWidth = movieCollectionView.frame.width
        let cellWidth = availableWidth / 2
        let cellHeight = cellWidth * 1.5
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
