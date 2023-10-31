//
//  ViewController.swift
//  desafio3
//
//  Created by Marcel Leite de Farias on 30/10/23.
//

import UIKit

class ViewController: UITableViewController {

    
    //MARK: - Atributos
    var bandeiras = [String]()
    var parsedName = [String]()
    
    //MARK: - Life cycle view
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Instanciar as classes de FileManager para buscar as imagens
        //na pasta de Content para salvar no array de bandeiras
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("band") {
                var parsed: String = item.replacingOccurrences(of: ".png", with: "")
                parsed = parsed.replacingOccurrences(of: "band", with: "")
                
                parsedName.append(parsed)
                bandeiras.append(item)
            }
        }
        
        
    }
    
    //MARK: Delegates UITableViewController
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bandeiras.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Bandeiras", for: indexPath) as! bandeirasViewCell
        cell.bandeiraImageView.image = UIImage(named: bandeiras[indexPath.row])
        
        
        
        cell.textLabel?.text = parsedName[indexPath.row].uppercased()
        cell.textLabel?.font = UIFont(name: "Kefa", size: 16.0)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detalhe") as? DetailViewController {
            vc.nameImage = parsedName[indexPath.row].uppercased()
            vc.selectedImage = bandeiras[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
        
    }


}

