

import UIKit

class SecondViewController: UIViewController {
    // MARK: - Public properties
    var lastMessage : String = ""
    var backMessage = GoBack(firstLine: "", secondLine: "", thirdLine: "")

    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let toTheThirdScreenButton = UIButton()
        toTheThirdScreenButton.frame.size = CGSize(width: 100, height: 50)
        toTheThirdScreenButton.layer.cornerRadius = 20
        toTheThirdScreenButton.backgroundColor = UIColor.red
        toTheThirdScreenButton.setTitle("NEXT", for: .normal)
        toTheThirdScreenButton.addTarget(self, action: #selector(goToNextController), for: .touchUpInside)
        toTheThirdScreenButton.center = self.view.center
        self.view.addSubview(toTheThirdScreenButton)
        
        let dismissButton = UIButton()
        dismissButton.frame.size = CGSize(width: 100, height: 50)
        dismissButton.layer.cornerRadius = 20
        dismissButton.backgroundColor = UIColor.red
        dismissButton.setTitle("BACK", for: .normal)
        dismissButton.addTarget(self, action: #selector(closeVC), for: .touchUpInside)
        dismissButton.frame.origin.x = toTheThirdScreenButton.frame.origin.x
        dismissButton.frame.origin.y = toTheThirdScreenButton.frame.origin.y + 100
        self.view.addSubview(dismissButton)
        
        view.backgroundColor = .black
    }
    
    // MARK: - Private methods
    @objc private func goToNextController(sender: UIButton!) {
        let destinationViewController = ThirdViewController()
        
        destinationViewController.modalTransitionStyle = .coverVertical
        destinationViewController.modalPresentationStyle = .fullScreen
        destinationViewController.lastMessage = lastMessage
        
        present(destinationViewController, animated: true)
    }
    
    @objc private func closeVC(sender: UIButton!) {
        
        guard let destinationViewController = self.presentingViewController as?
                  FirstViewController else { return }
    
        destinationViewController.backMessage = backMessage
        dismiss(animated: true)
    }
    
    
    
}


