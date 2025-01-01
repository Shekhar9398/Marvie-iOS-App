
import UIKit

class MenuVC: UIViewController {

    @IBOutlet weak var threeScreensImageView: UIImageView!
    
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: AppColors.linear1.rawValue)
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        presentMenu()
    }
    
    private func presentMenu(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "TabBarVC")
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        self.present(vc, animated: true)

    }
    
}
