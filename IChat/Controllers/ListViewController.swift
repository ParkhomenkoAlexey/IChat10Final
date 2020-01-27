//
//  ListViewController.swift
//  IChat
//
//  Created by Алексей Пархоменко on 27.01.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellid")
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource
extension ListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

// MARK: - SwiftUI
import SwiftUI

struct ListVCProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        let listVC = ListViewController()
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<ListVCProvider.ContainerView>) -> ListViewController {
            return listVC
        }
        
        func updateUIViewController(_ uiViewController: ListVCProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ListVCProvider.ContainerView>) {
            
        }
    }
}

