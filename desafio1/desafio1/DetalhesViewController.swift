//
//  DetalhesViewController.swift
//  desafio1
//
//  Created by Marcel Leite de Farias on 03/10/23.
//

import UIKit

class DetalhesViewController: UIViewController {

    var selectedImage: String?
    @IBOutlet var imageView: UIImageView!
    var totalImagens: Int?
    var indexImagem: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
        navigationItem.largeTitleDisplayMode = .never
        if let indexImagem = indexImagem, let totalImagens = totalImagens {
            navigationItem.title = "\(indexImagem) de \(totalImagens) imagens."
        }
        
        // Do any additional setup after loading the view.
    }
    
    

}
