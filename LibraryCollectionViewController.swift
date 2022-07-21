//
//  LibraryCollectionViewController.swift
//  Library
//
//  Created by Carki on 2022/07/20.
//

import UIKit
import Kingfisher

class LibraryCollectionViewController: UICollectionViewController {
    
    var bookList = BookInfo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //컬렉션뷰의 셀 크기, 셀 간격 등 설정
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 8 //간격
        let width = UIScreen.main.bounds.width - (spacing * 3) //셀 간격개수(셀이 2개면 간격은 3개)
        
        layout.itemSize = CGSize(width: (width / 2), height: (width / 2) * 1.2) // 디바이스 넓이 기준으로 3개씩 배치
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout

    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookList.book.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LibraryCollectionViewCell", for: indexPath) as! LibraryCollectionViewCell
        
        let r : CGFloat = CGFloat.random(in: 0.7...1)
        let g : CGFloat = CGFloat.random(in: 0.7...1)
        let b : CGFloat = CGFloat.random(in: 0.7...1)

        cell.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        cell.layer.cornerRadius = 20
        
//        cell.titleLabel.text = "dd"
//        cell.rateLabel.text = "0.4"
        let data = bookList.book[indexPath.row]
        cell.configureCell(data: data)
        
        cell.posterImage.image = UIImage(named: arrImageName[indexPath.row])
        
        return cell
    }
    


}
