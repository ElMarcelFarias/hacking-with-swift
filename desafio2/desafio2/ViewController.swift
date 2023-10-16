//
//  ViewController.swift
//  desafio2
//
//  Created by Marcel Leite de Farias on 10/10/23.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var button0: UIButton! {
        didSet {
            button0.backgroundColor = .clear
            button0.layer.cornerRadius = 10
            button0.layer.borderWidth = 2
            button0.layer.backgroundColor = UIColor.white.cgColor
        }
    }
    @IBOutlet var button1: UIButton! {
        didSet {
            button1.backgroundColor = .clear
            button1.layer.cornerRadius = 10
            button1.layer.borderWidth = 2
            button1.layer.backgroundColor = UIColor.white.cgColor
        }
    }
    @IBOutlet var button2: UIButton! {
        didSet {
            button2.backgroundColor = .clear
            button2.layer.cornerRadius = 10
            button2.layer.borderWidth = 2
            button2.layer.backgroundColor = UIColor.white.cgColor
        }
    }
    
    
    
    
    
    // MARK: - Atributos
    var paises: [String] = []
    var paisSelecionado: Int = 0
    var pontuacao: Int = 0
    var cont: Int = 0
    var contCorrect: Int = 0
    var contWrong: Int = 0
    
    
    //MARK: - Life cycle view
    override func viewDidLoad() {
        super.viewDidLoad()
        paises += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        askQuestion(action: nil)
        if let navigationBar = self.navigationController?.navigationBar {
            let scoreLabelPosition = CGRect(x: 10, y: 0, width: navigationBar.frame.width/2, height: navigationBar.frame.height)
            
            scoreLabel = UILabel(frame: scoreLabelPosition)
            scoreLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 16.0)
            scoreLabel.accessibilityIdentifier = "scoreLabel"
            navigationBar.addSubview(scoreLabel)
        }
    }
    
    func askQuestion(action: UIAlertAction?) {
        paises.shuffle()
        button0.setImage(UIImage(named: paises[0]), for: .normal)
        button1.setImage(UIImage(named: paises[1]), for: .normal)
        button2.setImage(UIImage(named: paises[2]), for: .normal)
        
        paisSelecionado = Int.random(in: 0...2)
        title = paises[paisSelecionado].uppercased()
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert: UIAlertController
        cont += 1
        
        if sender.tag == paisSelecionado {
            pontuacao += 1
            contCorrect += 1
            alert = UIAlertController(title: "Respota correta!", message: "Sua pontuação é de \(pontuacao)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Ação padrão"), style: .default, handler: askQuestion))
            scoreLabel.text = "Sua pontuação é: \(pontuacao)"
            
        } else {
            pontuacao -= 1
            contWrong += 1
            var wrongText: String = "Sua pontuação é: \(pontuacao)"
            if pontuacao <= 0 {
                wrongText = ""
                pontuacao = 0
            }
            alert = UIAlertController(title: "Respota Incorreta! ", message: "\(wrongText) \n\rEssa é a bandeira da \(paises[sender.tag].uppercased())", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Ação padrão"), style: .default, handler: askQuestion))
            scoreLabel.text = wrongText
           
        }
        if cont == 10 {
            checkFinal(cont: cont)
            
        }
        self.present(alert, animated: true)
        
        
        
    }
    
    func checkFinal(cont question: Int) {
        let alertFinal: UIAlertController
        alertFinal = UIAlertController(title: "PERGUNTAS ENCERRADAS!", message: "Quantidade de perguntas: 10 \n\rRespostas corretas: \(contCorrect)\n\rRespostas incorretas: \(contWrong)", preferredStyle: .alert)
        alertFinal.addAction(UIAlertAction(title: NSLocalizedString("Finalizar jogo.", comment: "Ação padrão"), style: .default, handler: askQuestion))
        self.present(alertFinal, animated: true)
        reloadGame()
    }
    
    func reloadGame() {
        pontuacao = 0
        contWrong = 0
        contCorrect = 0
        cont = 0
        scoreLabel.text = ""
    }
    


}

