import UIKit

enum AppColors: String, CaseIterable {
    case scarlet1, scarlet2, scarlet3
    case golden1, golden2, golden3
    case yellow1, yellow2, yellow3
    case purple1, purple2, purple3
    case blue1, blue2, blue3
    case linear1, linear2, linear3
    case white2
    case mint1, mint2, mint3

    // Convert color name to UIColor
    var color: UIColor? {
        return UIColor(named: self.rawValue)
    }

    // Get a random color from all AppColors
    static func getRandomColor() -> UIColor? {
        return AppColors.allCases.randomElement()?.color
    }
}
