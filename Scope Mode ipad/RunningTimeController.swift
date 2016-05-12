import Foundation
import UIKit

class RunningTimeController: UIViewController {
    var hiddenProjectVar =  String()
    var videoTypeVar = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : DeadlineController = segue.destinationViewController as! DeadlineController
        DestViewController.hiddenProjectVar = hiddenProjectVar
        
    }
    
}