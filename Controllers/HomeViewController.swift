//
//  HomeViewController.swift
//  Netflix Clone
//
//  Created by Vũ Hoàng Tùng on 29/5/25.
//

import UIKit

enum Sections: Int {
    case TrendingMovies = 0
}

class HomeViewController: UIViewController {
    
    let secsionTitles: [String] = [ "Trending Movies", "Trending Tv",  "Popular", "Upcoming Movies", "Top rated"]
    
    private let homeFeedTable: UITableView = {
        
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
        
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        
        configureNavbar()
        
        let headerView = HeroHeaderUIView(frame:CGRect(x: 0, y: 0, width: view.bounds.width, height: 450))
        homeFeedTable.tableHeaderView = headerView
        
//        getTredingMovies()
//        getTredingTVShows()
//        getUpcomingMoviesResponse()
        
    }
    
    private func configureNavbar() {
        var image = UIImage(named: "netflixLogo")
        image=image?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName:"person"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName:"play.rectangle"), style: .done, target: self, action: nil)
        ]
        navigationController?.navigationBar.tintColor = .white
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
    
//    
//    private func getTredingMovies() {
//        APICaller.shared.getTrendingMovies { 
//            result in
//                switch result {
//                case .success(let jsonString):
//                    print("Trending Movies JSON:\n\(jsonString)")
//                case .failure(let error):
//                    print("Failed to get trending movies: \(error.localizedDescription)")
//                }
//            
//        }
//    }
//    
//    private func getTredingTVShows() {
//        APICaller.shared.getMockTrendingTVShows {
//            result in
//                switch result {
//                case .success(let jsonString):
//                    print("Trending TV JSON:\n\(jsonString)")
//                case .failure(let error):
//                    print("Failed to get trending TV: \(error.localizedDescription)")
//                }
//            
//        }
//    }
//    
//    private func getUpcomingMoviesResponse() {
//        APICaller.shared.getMockUpcomingMovies {
//            result in
//                switch result {
//                case .success(let jsonString):
//                    print("Trending TV JSON:\n\(jsonString)")
//                case .failure(let error):
//                    print("Failed to get trending TV: \(error.localizedDescription)")
//                }
//            
//        }
//    }
//    
//    
//    
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return secsionTitles.count
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        
        switch indexPath.section {
        case Sections.TrendingMovies.rawValue:
            APICaller.shared.getTrendingMovies { result in
                switch result {
                case.success(let movies):
                    cell.configure(with: movies)
                case .failure(let error):
                    print(error.localizedDescription)
                }
                
            }
        default :
            return UITableViewCell()
        
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20 , y: header.bounds.origin.y, width: 100, height: header.bounds.height)
        header.textLabel?.textColor = .white
        header.textLabel?.text = header.textLabel?.text?.capitalizeFirstLetter()
    }
    
    func tableView(_ tableView: UITableView, tiltForHeaderInSection section: Int) -> String? {
        return secsionTitles[section]
        
    }
    func scrollViewDisScroll(_ scrollView: UIScrollView) {
        let defaultoffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultoffset
        
        navigationController?.navigationBar.transform = .init(translationX: 0, y: min(0,-offset))
                                                              
    }
}
