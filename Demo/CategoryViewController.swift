//
//  ViewController.swift
//  Demo
//
//  Created by Mahboob Nur on 24/4/22.
//

import UIKit

class CategoryViewController: UIViewController {
    
    var categoryView = UIView()
    @IBOutlet weak var scrolParent: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designCategory()
        // Do any additional setup after loading the view.
    }

    func designCategory()
    {
        var lblCategoryTitle = UILabel()
        var viewItem = UIView()
        scrolParent.contentSize = CGSize(width: scrolParent.frame.size.width, height: scrolParent.frame.size.height*100)
        var xpos = 0 , ypos = 0
        var itXpos = 0, itYpos = 0
        var itemScroll = UIScrollView()
        for i in 1...100
        {
            categoryView = UIView(frame:CGRect(x:CGFloat(xpos), y: CGFloat(ypos), width:self.view.frame.size.width, height:self.view.frame.size.width))
            categoryView.backgroundColor = UIColor.orange
            scrolParent.addSubview(categoryView)
            
            lblCategoryTitle = UILabel(frame: CGRect(x:5, y: 10, width:200, height:50))
            lblCategoryTitle.text = "Category:\(i)"
            categoryView.addSubview(lblCategoryTitle)
            itemScroll = UIScrollView(frame: CGRect(x:0, y: 50, width:categoryView.frame.size.width, height:categoryView.frame.size.height))
            categoryView.addSubview(itemScroll)
            itemScroll.contentSize = CGSize(width: itemScroll.frame.size.width*5, height: itemScroll.frame.size.height)
            for j in 1...27
            {
                viewItem = UIView(frame: CGRect(x:CGFloat(itXpos), y: CGFloat(itYpos), width:200, height:50))
                itemScroll.addSubview(viewItem)
                viewItem.backgroundColor = UIColor.blue
                itXpos =  itXpos + Int(viewItem.frame.size.width) + 10
                if j % 5 == 0
                {
                    itYpos =  itYpos + Int(viewItem.frame.self.height) + 5
                    itXpos = 0
                }
                else
                {
                    
                }
            
                
            }
            
            
            
            
            
            
            
            
            ypos = ypos + Int(categoryView.frame.size.height) + 5
        }
    }

}

