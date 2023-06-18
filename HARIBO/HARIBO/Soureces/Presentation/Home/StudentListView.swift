////
////  StudentListView.swift
////  HARIBO
////
////  Created by 김주은 on 2023/06/10.
////
//
//import UIKit
//
//class StudentListViewController: UIViewController {
//
//    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
//        $0.register(StudentCell.self, forCellWithReuseIdentifier: "StudentCell")
//        $0.backgroundColor = .white
//    }
//
//    private var students: [Student] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupView()
//        loadData()
//    }
//
//    private func setupView() {
//        view.addSubview(collectionView)
//        collectionView.snp.makeConstraints {
//            $0.edges.equalToSuperview()
//        }
//        collectionView.dataSource = self
//        collectionView.delegate = self
//    }
//
//    private func loadData() {
//        // 학생 데이터를 가져오는 로직 작성
//        // 예시로 더미 데이터를 생성하여 사용합니다.
//        students = createDummyStudents()
//        collectionView.reloadData()
//    }
//    
//    private func createDummyStudents() -> [Student] {
//        var dummyStudents: [Student] = []
//
//        // 더미 데이터를 생성하여 배열에 추가
//        dummyStudents.append(Student(name: "신아인", classNumber: "2211"))
//        dummyStudents.append(Student(name: "선민재", classNumber: "3111"))
//        // 추가적인 학생 데이터 생성 및 추가
//
//        return dummyStudents
//    }
//
//}
