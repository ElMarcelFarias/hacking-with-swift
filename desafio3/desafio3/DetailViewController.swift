//
//  DetailViewController.swift
//  desafio3
//
//  Created by Marcel Leite de Farias on 30/10/23.
//
import UIKit

class DetailViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var imageDetail: UIImageView!
    
    //MARK: - Atributos
    var nameImage: String?
    var selectedImage: String?
    
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        title = nameImage
        if let image = selectedImage {
            imageDetail.image = UIImage(named: image)
        }
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    
    
    
    //MARK: - Functions
    @objc func shareTapped() {
        guard let image = selectedImage else {
            return
        }
        
        guard let nameImage = nameImage else {
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image, nameImage], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)

    }
}

