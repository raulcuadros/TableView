//
//  ColorTableViewController.swift
//  Colores
//
//  Created by 2019-2 on 5/8/19.
//  Copyright © 2019 2019-2. All rights reserved.
//

import UIKit

class ColorTableViewController: UITableViewController {

    let coloresPrimarios:[Color] = [
        Color(Nombre: "Azul", Composicion: nil),
        Color(Nombre: "Rojo", Composicion: nil),
        Color(Nombre: "Amarillo", Composicion: nil)
    ]
    
    let coloresSecundarios:[Color] = [
        Color(Nombre: "Morado", Composicion: ["Rojo","Azul"]),
        Color(Nombre: "Naranja", Composicion: ["Rojo","Amarillo"]),
        Color(Nombre: "Verde", Composicion: ["Azul","Amarillo"])
    ]
    
    let coloresTerciarios:[Color] = [
        Color(Nombre: "Azul Turquesa", Composicion: ["Verde","Azul"]),
        Color(Nombre: "Amarillo Huevo", Composicion: ["Amarillo","Naranja"])
    ]
    
    let secciones = ["Primarios","Secundarios","Terciarios"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return secciones.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return secciones[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return coloresPrimarios.count
        } else if section == 1{
            return coloresSecundarios.count
        }else if section == 2 {
            return coloresTerciarios.count
        }else{
            return 0
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
