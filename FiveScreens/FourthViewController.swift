
import UIKit

class FourthViewController: UIViewController {
    // MARK: - Public properties
    var lastMessage : String = ""
    var backMessage  = GoBack(firstLine: "", secondLine: "", thirdLine: "")

    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let toTheFifthScreenButton = UIButton()
        toTheFifthScreenButton.frame.size = CGSize(width: 100, height: 50)
        toTheFifthScreenButton.layer.cornerRadius = 20
        toTheFifthScreenButton.backgroundColor = UIColor.blue
        toTheFifthScreenButton.setTitle("NEXT", for: .normal)
        toTheFifthScreenButton.addTarget(self, action: #selector(goToNextController), for: .touchUpInside)
        toTheFifthScreenButton.center = self.view.center
        self.view.addSubview(toTheFifthScreenButton)
        
        let dismissButton = UIButton()
        dismissButton.frame.size = CGSize(width: 100, height: 50)
        dismissButton.layer.cornerRadius = 20
        dismissButton.setTitle("BACK", for: .normal)
        dismissButton.backgroundColor = UIColor.blue
        dismissButton.addTarget(self, action: #selector(closeVC), for: .touchUpInside)
        dismissButton.frame.origin.x = toTheFifthScreenButton.frame.origin.x
        dismissButton.frame.origin.y = toTheFifthScreenButton.frame.origin.y + 100
        self.view.addSubview(dismissButton)
        
        view.backgroundColor = .black
    }
    
    // MARK: - Private methods
    @objc private func goToNextController(sender: UIButton!) {
        
        let destinationViewController = FifthViewController()
        
        destinationViewController.modalTransitionStyle = .coverVertical
        destinationViewController.modalPresentationStyle = .fullScreen
        destinationViewController.lastMessage = lastMessage
        
        present(destinationViewController, animated: true)
    }
    
    @objc private func closeVC(sender: UIButton!) {
        guard let destinationViewController = self.presentingViewController as?
                  ThirdViewController else { return }
        
        destinationViewController.backMessage = backMessage
        dismiss(animated: true)
        
    }
    
    
}
