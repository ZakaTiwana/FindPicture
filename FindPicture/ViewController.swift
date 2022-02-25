//
//  ViewController.swift
//  FindPicture
//
//  Created by MBP on 19/02/2022.
//

import UIKit

class ViewController: UIViewController {
   
//    let carouselView = CarouselView()
    private var carouselView: CarouselView?
    private var carouselData = [CarouselView.CarouselData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        carouselView = CarouselView(pages: 3, delegate: self)
        carouselData.append(.init(image:  UIImage.resource(Resource.Image.search), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"))
                carouselData.append(.init(image: UIImage.resource(Resource.Image.tick), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"))
                carouselData.append(.init(image: UIImage.resource(Resource.Image.catalog), text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit"))
                
                setupUI()
    }
    
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            carouselView?.configureView(with: carouselData)
        }
    
}

private extension ViewController {
    func setupUI() {
       // view.backgroundColor = backgroundColors.first
        view.backgroundColor = UIColor.resource(Resource.Color.secondary)
        guard let carouselView = carouselView else { return }
        view.addSubview(carouselView)
        carouselView.translatesAutoresizingMaskIntoConstraints = false
        carouselView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        carouselView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        carouselView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        carouselView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

// MARK: - CarouselViewDelegate
extension ViewController: CarouselViewDelegate {
    func currentPageDidChange(to page: Int) {
        UIView.animate(withDuration: 0.7) {
           // self.view.backgroundColor = self.backgroundColors[page]
            self.view.backgroundColor = UIColor.resource(Resource.Color.secondary)
        }
    }
}

