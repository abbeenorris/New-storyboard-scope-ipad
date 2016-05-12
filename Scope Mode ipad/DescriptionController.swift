import Foundation
import UIKit

class DescriptionController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    @IBOutlet weak var descriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           print(projectTitleVar)
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let projectTitle : PartProductionController = segue.destinationViewController as! PartProductionController
        projectTitle.projectTitleVar = projectTitleVar
        
        let videoType : PartProductionController = segue.destinationViewController as! PartProductionController
        videoType.videoTypeVar = videoTypeVar
        
    }
}
