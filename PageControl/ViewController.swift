//
//  ViewController.swift
//  PageControl
//
//  Created by Nam on 2024/06/30.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var pageControl: UIPageControl!
    
    // 이미지 파일 이름 저장한 배열
    var images = [ "01.png", "02.png", "03.png", "04.png", "05.png", "06.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 페이지 컨트롤의 전체 페이지 수
        pageControl.numberOfPages = images.count
        // 현재 페이지
        pageControl.currentPage = 0
        //페이지 컨트롤의 페이지 표시 부분 색상
        pageControl.pageIndicatorTintColor = UIColor.green
        // 페이지 컨트롤의 현재 페이지 표시 색상
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        imgView.image = UIImage(named: images[0])
    }

    // 페이지가 변하면 호출됨
    @IBAction func pageChange(_ sender: UIPageControl) {
        // 페이지 컨트롤의 현재페이지를 갖고옴 -> 현재 페이지에 해당하는 이미지 파일의 이름을 배열에서 갖고옴 -> 이미지 뷰에 할당
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
    
}

