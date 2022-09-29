
import UIKit

class ThirdViewController: UIViewController {
    // MARK: - Public properties
    var lastMessage : String = ""
    var backMessage = GoBack(firstLine: "", secondLine: "", thirdLine: "")
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toTheFourthScreenButton = UIButton()
        toTheFourthScreenButton.frame.size = CGSize(width: 100, height: 50)
        toTheFourthScreenButton.layer.cornerRadius = 20
        toTheFourthScreenButton.backgroundColor = UIColor.orange
        toTheFourthScreenButton.setTitle("NEXT", for: .normal)
        toTheFourthScreenButton.addTarget(self, action: #selector(goToNextController), for: .touchUpInside)
        toTheFourthScreenButton.center = self.view.center
        self.view.addSubview(toTheFourthScreenButton)
        
        let dismissButton = UIButton()
        dismissButton.frame.size = CGSize(width: 100, height: 50)
        dismissButton.layer.cornerRadius = 20
        dismissButton.setTitle("BACK", for: .normal)
        dismissButton.backgroundColor = UIColor.orange
        dismissButton.addTarget(self, action: #selector(closeVC), for: .touchUpInside)
        dismissButton.frame.origin.x = toTheFourthScreenButton.frame.origin.x
        dismissButton.frame.origin.y = toTheFourthScreenButton.frame.origin.y + 100
        self.view.addSubview(dismissButton)
        
        self.view.backgroundColor = .white
    }
    
    // MARK: - Private methods
    @objc private func goToNextController(sender: UIButton!) {
        
        let destinationViewController = FourthViewController()
        
        destinationViewController.modalTransitionStyle = .coverVertical
        destinationViewController.modalPresentationStyle = .fullScreen
        destinationViewController.lastMessage = lastMessage

        present(destinationViewController, animated: true)
    }
 
    @objc  func closeVC(sender: UIButton!) {
        guard let destinationViewController = self.presentingViewController as?
                  SecondViewController else { return }
        
        destinationViewController.backMessage = backMessage
        dismiss(animated: true)
        
    }
    
    
    
}
