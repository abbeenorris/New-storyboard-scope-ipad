import Foundation
import UIKit

class DescriptionController: UIViewController {
    var projectTitleVar =  String()
    var videoTypeVar = String()
    var budgetVar = String()
    var platformVar = String()
    
    @IBOutlet weak var descriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : PartProductionController = segue.destinationViewController as! PartProductionController
        projectTitle.projectTitleVar = projectTitleVar
        
        let videoType : PartProductionController = segue.destinationViewController as! PartProductionController
        videoType.videoTypeVar = videoTypeVar
        
        let budget : PartProductionController = segue.destinationViewController as! PartProductionController
        budget.budgetVar = budgetVar
        
        let platform : PartProductionController = segue.destinationViewController as! PartProductionController
        platform.platformVar = platformVar
        
        let description : PartProductionController = segue.destinationViewController as! PartProductionController
        description.descriptionVar = descriptionText.text!
        
    }
}
