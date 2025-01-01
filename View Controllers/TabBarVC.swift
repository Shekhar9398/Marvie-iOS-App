
import UIKit

class TabBarVC: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarCustomization()
    }
    
    private func tabBarCustomization(){
        self.tabBar.tintColor = UIColor(named: AppColors.mint2.rawValue)
        self.tabBar.layer.masksToBounds = true
        self.tabBar.layer.cornerRadius = 30
        self.tabBar.barTintColor = UIColor(named: AppColors.linear2.rawValue)
    }
    
}
