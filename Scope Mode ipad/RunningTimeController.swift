import Foundation
import UIKit

class RunningTimeController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(projectTitleVar)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : DeadlineController = segue.destinationViewController as! DeadlineController
        DestViewController.projectTitleVar = projectTitleVar
        
    }
    
}