import Foundation
import UIKit

class BudgetController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var platformVar = String()
    var budgetVar = String()
    
    @IBOutlet weak var budgetSlider: UISlider!
    @IBOutlet weak var budgetLabel: UILabel!
    let step: Float = 100
    
    @IBAction func BudgetChanged(sender: AnyObject) {
        let currentlVaule = round(budgetSlider.value / step) * step
        budgetLabel.text = "£\(currentlVaule)"
        budgetVar = budgetLabel.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
           
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : ContactController = segue.destinationViewController as! ContactController
        projectTitle.projectTitleVar = projectTitleVar
        
        let videoType : ContactController = segue.destinationViewController as! ContactController
        videoType.videoTypeVar = videoTypeVar
        
        let budget : ContactController = segue.destinationViewController as! ContactController
        budget.budgetVar = budgetVar
        
        
    }
}
