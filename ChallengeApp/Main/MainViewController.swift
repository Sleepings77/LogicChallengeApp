//
//  MainViewController.swift
//  GlobalLogicChallenge
//
//  Created by Matias on 01/07/2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak private var tableView : UITableView!
    
    override var preferredStatusBarStyle : UIStatusBarStyle { .lightContent }

    private var data : [ObjectAPI] = [] { didSet { tableView.reloadData() } }
    private var viewModel : ViewModel?
        
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    private func configureView() {
        viewModel = .init(view: self)
        setupTableView()
        viewModel?.getResponse()
    }
    
    func fetchData(with data: [ObjectAPI]) {
        self.data = data
    }
    
}

extension MainViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as! MainTableViewCell
        cell.selectionStyle = .none
        cell.configure(object: data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController(with: data[indexPath.row])
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MainTableViewCell.getNib(), forCellReuseIdentifier: MainTableViewCell.identifier)
        tableView.reloadData()
    }
    
}
