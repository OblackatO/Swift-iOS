//
//  ViewController.swift
//  file_management
//
//  Created by Pedro Gomes  on 06/01/2018.
//  Copyright © 2018 Pedro Gomes . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var file_manager = FileManager()
    var temp_dir = NSTemporaryDirectory() //NSTemporaryDirectory()
    let file_name = "sample"
    var path : String = ""
    
    func get_dir_contents(_ dir_path : String) ->  [String]  {
        
        var files : [String] =  []
        let files_in_dir = try? self.file_manager.contentsOfDirectory(atPath: dir_path)
        if files_in_dir != nil {
            if files_in_dir!.count > 0  {
                for file in files_in_dir! {
                    files.append(file)
                }
            }
            return files
            
        }
        return []
    }
    
    @IBAction func create_file(_ sender: UIButton) {
        
        var error: NSError?
        self.path = self.temp_dir+"/"+self.file_name
        let content_of_file = "this is just a test"
        
        
        if self.file_manager.fileExists(atPath: self.path) {
            
            if let error_message = error  {
                print("File already exists")
                print(error_message)
            }
        }else {
            self.file_manager.createFile(atPath: self.path, contents:nil)
            if (try? content_of_file.write(toFile: self.path, atomically: true, encoding: String.Encoding.utf8)) != nil{
                print("File was sucessfully created")
            }else {
                print("File was not created...")
            }
        }
     }
    
   @IBAction func delete_file(_ sender: UIButton){
        
        do{
            try self.file_manager.removeItem(atPath: self.path)
         }catch let error as NSError{
            print("An error occured while removing file.")
            print("Error details:")
            print(error)
        }
     }
    
    
    @IBAction func view_file_content(_ sender: UIButton) {
        
        let dir_contents = get_dir_contents(self.temp_dir)
        
        if (get_dir_contents(self.temp_dir) !=  []) && (dir_contents.contains(self.file_name)) {
            
           // let file_content = NSString(contentsOfFile : )
            if self.path != "" {
                let contents = self.file_manager.contents(atPath: self.path)
                print("These are the contents of the file:")
                var contents_utf8 : NSString = ""
                contents_utf8 = NSString(data : contents!, encoding : String.Encoding.utf8.rawValue)!
                print(contents_utf8 as Any)
             }else {
                print("Files does not exist. Use create button to create it.")
             }
        }
    }
    
    
    @IBAction func view_folder_content(_ sender: UIButton) {
        
        let dir_contents = get_dir_contents(self.temp_dir)
        if dir_contents !=  []  {
            for file in dir_contents  {
                print("[>] \(file)")
            }
        }else {
            print("No files in dir")
        }
    }
    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    */
    
    /*
     https://www.ioscreator.com/tutorials/file-management-tutorial-ios8-swift :
 https://iswift.org/cookbook/read-data-from-file : very important cookbook about swift and iOS 
    
    

}

