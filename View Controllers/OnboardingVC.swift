
import UIKit

class OnboardingVC: UIViewController {

    
    @IBOutlet weak var hiGuysLbl: UILabel!
    @IBOutlet weak var welcomeLbl: UILabel!
    @IBOutlet weak var nextBtnOutlet: UIButton!
    @IBOutlet weak var catPillarImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        presentMenu()
    }
    
    private func presentMenu(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "MenuVC")
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        self.present(vc, animated: true)
    }
    

}
