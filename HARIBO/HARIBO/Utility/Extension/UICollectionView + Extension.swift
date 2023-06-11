////
////  UICollectionView + Extension.swift
////  HARIBO
////
////  Created by 김주은 on 2023/06/10.
////
//
import UIKit
//
//
//extension StudentListViewController: UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return students.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StudentCell", for: indexPath) as! StudentCell
//        let student = students[indexPath.item]
//        cell.configure(with: student)
//        return cell
//    }
//
//}
//
//extension StudentListViewController: UICollectionViewDelegateFlowLayout {
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        // 셀의 크기 설정
//        let itemWidth = collectionView.frame.width - 20
//        let itemHeight: CGFloat = 100
//        return CGSize(width: itemWidth, height: itemHeight)
//    }
//
//    // 추가적인 UICollectionViewDelegateFlowLayout 메소드 구현
//
//}

//extension HomeViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 3
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        // 셀 재사용을 위해 식별자를 지정하고, dequeueReusableCell 메서드를 사용하여 셀을 가져옵니다.
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StudentCell", for: indexPath)
//
//        let student1 = Student(name: "김주은", classNumber: "2102")
//        let student2 = Student(name: "신아인", classNumber: "2211")
//        let student3 = Student(name: "김종한", classNumber: "2205")
//
//        students = [student1, student2, student3]
//
//        // 셀에 데이터를 설정합니다.
//        let student = students[indexPath.item]
//        cell.nameLabel.text = student.name
//        cell.classNumLabel.text = student.classNumber
//
//        return cell
//    }
//}







