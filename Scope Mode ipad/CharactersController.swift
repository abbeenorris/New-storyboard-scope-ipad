import Foundation
import UIKit

class CharactersController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
           print(projectTitleVar)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : PlatformController = segue.destinationViewController as! PlatformController
        DestViewController.projectTitleVar = projectTitleVar
        
    }
    
}