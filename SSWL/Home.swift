//
//  ViewController.swift
//  SSWL
//
//  Created by Ahmed on 9/3/18.
//  Copyright © 2018 Ahmed. All rights reserved.
//

import UIKit

class Home: UIViewController {
    
    @IBOutlet var homeB: UIButton!
    @IBOutlet var packdegB: UIButton!
    @IBOutlet var eventsB: UIButton!
    @IBOutlet var pagesB: UIButton!
    @IBOutlet var newsB: UIButton!
    @IBOutlet var coursesB: UIButton!
    @IBOutlet var contactsB: UIButton!
    @IBOutlet var logoutB: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handelMenu(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.homeB.isHidden = !self.homeB.isHidden
            self.packdegB.isHidden = !self.packdegB.isHidden
            self.eventsB.isHidden = !self.eventsB.isHidden
            self.pagesB.isHidden = !self.pagesB.isHidden
            self.newsB.isHidden = !self.newsB.isHidden
            self.coursesB.isHidden = !self.coursesB.isHidden
            self.contactsB.isHidden = !self.contactsB.isHidden
            self.logoutB.isHidden = !self.logoutB.isHidden
            self.view.layoutIfNeeded()
        }
      
      
    }
    enum List : String {
        case home = "Home"
        case PopularExam = "Popular Exam"
        case events = "Events"
        case pages = "Pages"
        case news = "News"
        case courses = "Courses"
        case contacts = "Contacts"
        case logout = "Logout"
    }
    @IBAction func menuTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle ,  let listMenu = List(rawValue:title) else {
            return
        }
        switch listMenu {
        case .home: print("Home")
        case .PopularExam: print("Popular Exam")
        case .events: print("events")
        case .pages: print("pages")
        case .news: print("news")
        case .courses: print("courses")
        case .contacts: print("contacts")
        case .logout: print("Logout")
        default : print("close")
        }
    }
    
}



