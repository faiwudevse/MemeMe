//
//  MemeTableViewController.swift
//  MemeMe
//
//  Created by Fai Wu on 10/3/17.
//  Copyright © 2017 Fai Wu. All rights reserved.
//

import UIKit
// MARK: class MemeTableViewController: UITableViewController
class MemeTableViewController: UITableViewController {
    
    var memes: [Meme] {return (UIApplication.shared.delegate as! AppDelegate).memes}
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // add editor on right navigation bar
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: self, action: #selector(MemeTableViewController.editor))
        self.tableView.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Reload the data when it will appear
        self.tableView.reloadData()
    }
    
    // MARK: table source and cell config
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableCell") as! MemeTableViewCell
        let meme = memes[indexPath.row]
        cell.memeImage.image = meme.memedImage
        cell.memeText.text = meme.topText + " ... " + meme.bottomText
        return cell
    }
    
    // MARK: Selected table row
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let meme = memes[indexPath.row]
        let memeDetailVC = self.storyboard?.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        memeDetailVC.meme = meme
        self.navigationController?.pushViewController(memeDetailVC, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.delete) {
            (UIApplication.shared.delegate as! AppDelegate).memes.remove(at: indexPath.row)
            self.tableView.reloadData()
            // handle delete (by removing the data from your array and updating the tableview)
            //(UIApplication.shared.delegate as! AppDelegate).memes
        }
    }
    
    
    // MARK: editor
    @objc func editor(){
        let memeEditor = self.storyboard?.instantiateViewController(withIdentifier: "MemeEditorViewController") as! MemeEditorViewController
        present(memeEditor, animated: true, completion: nil)
    }

}
