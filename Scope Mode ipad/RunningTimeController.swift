import Foundation
import UIKit

class RunningTimeController: UIViewController {
    var projectTitleVar =  String()
    var clientNameVar = String()
    var videoTypeVar = String()
    var timeVar = String()
    
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var timeLabel: UILabel!
    let step: Float = 0
    
    @IBAction func BudgetChanged(sender: AnyObject) {
        let currentlVaule = (timeSlider.value / step) * step
        timeLabel.text = "\(currentlVaule)"
        timeVar = timeLabel.text!
    }

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let DestViewController : DeadlineController = segue.destinationViewController as! DeadlineController
        DestViewController.projectTitleVar = projectTitleVar
        
        let clientName : DeadlineController = segue.destinationViewController as! DeadlineController
        clientName.clientNameVar = clientNameVar
        
        let videoType : DeadlineController = segue.destinationViewController as! DeadlineController
        videoType.videoTypeVar = videoTypeVar
        
        let runningTime : DeadlineController = segue.destinationViewController as! DeadlineController
        runningTime.timeVar = timeVar
        
    }
    
}