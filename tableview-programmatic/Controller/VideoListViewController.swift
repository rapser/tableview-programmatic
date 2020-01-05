//
//  VideoListViewController.swift
//  tableview-programmatic
//
//  Created by miguel tomairo on 1/5/20.
//  Copyright © 2020 rapser. All rights reserved.
//

import UIKit

class VideoListViewController: UIViewController {
    
    var tableView = UITableView()
    var videos: [Video] = []
    
    struct Cells{
        static let videoCell = "VideoCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Miguel Videos"
        navigationController?.navigationBar.prefersLargeTitles = true
        videos = fetchData()

        configureTableView()
    }

    func configureTableView(){
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: Cells.videoCell)
        tableView.pin(to: view)
    }

    func setTableViewDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension VideoListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.videoCell, for: indexPath) as! VideoCell
        
        let video = videos[indexPath.row]
        cell.set(video: video)
        
        return cell
    }

}

extension VideoListViewController {
    
    func fetchData() -> [Video]{
        
        let video1 = Video(image: Images.ninety ,title: "Dios no juega a los dados")
        let video2 = Video(image: Images.softSkills ,title: "Tiene habilidades blandas")
        let video3 = Video(image: Images.patreon ,title: "Usamos el patron MVC")
        let video4 = Video(image: Images.raise ,title: "La origen del caos")
        let video5 = Video(image: Images.shake ,title: "Busca el movimiento rectilineo uniforme")
        
        let video6 = Video(image: Images.ninety ,title: "Solo se que nada se")
        let video7 = Video(image: Images.softSkills ,title: "Solo el verdadero camino se abrira frente a ti")
        let video8 = Video(image: Images.patreon ,title: "Tipo valor y tipo referencia")
        let video9 = Video(image: Images.raise ,title: "Todo lo que brilla no es oro")
        let video10 = Video(image: Images.shake ,title: "Sin una palabra en la mente para decir")
        
        return [video1, video2, video3, video4, video5, video6, video7, video8, video9, video10]
    }
}
