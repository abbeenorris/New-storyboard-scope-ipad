import Foundation
import UIKit

class PartProductionController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : StyleController = segue.destinationViewController as! StyleController
        DestViewController.projectTitleVar = projectTitleVar
        
    }
}