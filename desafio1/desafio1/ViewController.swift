//
//  ViewController.swift
//  desafio1
//
//  Created by Marcel Leite de Farias on 03/10/23.
//

import UIKit

class ViewController: UITableViewController {

    var images: [String] = [String]()
    let fileManager = FileManager.default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                images.append(item)
                images.sort()
            }
        }
        
        navigationItem.title = "Tempestades"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaId", for: indexPath)
        celula.textLabel?.text = images[indexPath.row]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detalhes") as? DetalhesViewController {
            vc.selectedImage = images[indexPath.row]
            vc.indexImagem = indexPath.row + 1
            vc.totalImagens = images.count
            navigationController?.pushViewController(vc, animated: true)
            
        }
    }


}

