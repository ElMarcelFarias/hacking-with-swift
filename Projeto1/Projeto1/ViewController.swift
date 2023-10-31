//
//  ViewController.swift
//  Projeto1
//
//  Created by Marcel Leite de Farias on 29/09/23.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        title = "Storm Viewer"
        // Do any additional setup after loading the view.
        navigationController?.navigationBar.prefersLargeTitles = true
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        print(pictures)
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Imagem", for: indexPath)
    
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detalhe") as? DetailViewController {
            vc.selectedImage = pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func shareTapped() {
        
        let msg: String = "Se você é fascinado por tempestades e deseja capturar a beleza e a grandiosidade da natureza, o aplicativo [Nome do Aplicativo] é um must-have em seu smartphone. Com uma variedade de recursos e filtros especiais para fotos de tempestades, este aplicativo torna mais fácil do que nunca registrar momentos impressionantes. Não perca a oportunidade de capturar a energia das tempestades. Baixe [Nome do Aplicativo] agora e comece a fotografar tempestades como um profissional!"

        let vc = UIActivityViewController(activityItems: [msg], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }


}

