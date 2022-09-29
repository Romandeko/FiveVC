
import UIKit

class FifthViewController: UIViewController {
    // MARK: - Public properties
    var lastMessage : String = ""
    var backMessage = GoBack(firstLine: "Ого", secondLine: "Ты", thirdLine: "Вернулся")
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let dismissButton = UIButton()
        dismissButton.frame.size = CGSize(width: 100, height: 50)
        dismissButton.layer.cornerRadius = 20
        dismissButton.backgroundColor = UIColor.purple
        dismissButton.setTitle("BACK", for: .normal)
        dismissButton.addTarget(self, action: #selector(closeVC), for: .touchUpInside)
        dismissButton.center = self.view.center
        self.view.addSubview(dismissButton)

        let finalLabel = UILabel()
        finalLabel.text = lastMessage
        finalLabel.textAlignment = .center
        finalLabel.frame.size = CGSize(width: 100, height: 50)
        finalLabel.layer.cornerRadius = 20
        finalLabel.frame.origin.x = dismissButton.frame.origin.x
        finalLabel.frame.origin.y = dismissButton.frame.origin.y - 300
        self.view.addSubview(finalLabel)
            
        view.backgroundColor = .white
    }
    
    // MARK: - Private methods
    @objc  func closeVC(sender: UIButton!) {
        guard let destinationViewController = self.presentingViewController as?
                  FourthViewController else { return }

        destinationViewController.backMessage = backMessage
        dismiss(animated: true)
      
    }
    
    
}
