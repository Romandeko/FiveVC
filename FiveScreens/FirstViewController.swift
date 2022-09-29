
import UIKit
  
class FirstViewController: UIViewController {
    
    // MARK: - Public properties
    var lastMessage = "Пока"
    var backMessage = GoBack(firstLine:"", secondLine: "", thirdLine: "")
    
    // MARK: - Override methods
    override func viewWillAppear(_ animated: Bool) {
        
        let toTheSecondScreenButton = UIButton()
        toTheSecondScreenButton.frame.size = CGSize(width: 100, height: 50)
        toTheSecondScreenButton.layer.cornerRadius = 20
        toTheSecondScreenButton.backgroundColor = UIColor.green
        toTheSecondScreenButton.setTitle("NEXT", for: .normal)
        toTheSecondScreenButton.addTarget(self, action: #selector(goToNextController), for: .touchUpInside)
        toTheSecondScreenButton.center = self.view.center
        self.view.addSubview(toTheSecondScreenButton)
        
        let firstLabel = UILabel()
        firstLabel.text = backMessage.firstLine
        firstLabel.textAlignment = .center
        firstLabel.frame.size = CGSize(width: 100, height: 50)
        firstLabel.layer.cornerRadius = 20
        firstLabel.frame.origin.x = toTheSecondScreenButton.frame.origin.x
        firstLabel.frame.origin.y = toTheSecondScreenButton.frame.origin.y - 300
        self.view.addSubview(firstLabel)
        
        let secondLabel = UILabel()
        secondLabel.text = backMessage.secondLine
        secondLabel.textAlignment = .center
        secondLabel.frame.size = CGSize(width: 100, height: 50)
        secondLabel.layer.cornerRadius = 20
        secondLabel.frame.origin.x = toTheSecondScreenButton.frame.origin.x
        secondLabel.frame.origin.y = toTheSecondScreenButton.frame.origin.y - 200
        self.view.addSubview(secondLabel)
        
        let thirdLabel = UILabel()
        thirdLabel.text = backMessage.thirdLine
        thirdLabel.textAlignment = .center
        thirdLabel.frame.size = CGSize(width: 100, height: 50)
        thirdLabel.layer.cornerRadius = 20
        thirdLabel.frame.origin.x = toTheSecondScreenButton.frame.origin.x
        thirdLabel.frame.origin.y = toTheSecondScreenButton.frame.origin.y - 100
        self.view.addSubview(thirdLabel)
    }
    
    // MARK: - Private methods
    @objc private func goToNextController(sender: UIButton!) {
        
        let destinationViewController = SecondViewController()
        
        destinationViewController.modalTransitionStyle = .coverVertical
        destinationViewController.modalPresentationStyle = .fullScreen
        destinationViewController.lastMessage = lastMessage
        
        present(destinationViewController, animated: true)
    }
    
}

