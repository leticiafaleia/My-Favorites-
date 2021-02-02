//
//  ViewController.swift
//  My Favorites
//
//  Created by Letícia Santos on 01/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    func allMovies(){
        let movieOne = Movie(movieName: "Star Wars IV: The New Hope", movieImage: "star-wars", isFavorite: true)
        let movieTwo = Movie(movieName: "Avatar", movieImage: "avatar", isFavorite: false)
        let movieThree = Movie(movieName: "Hidden Figures", movieImage: "hidden-figures", isFavorite: true)
        let movieFour = Movie(movieName: "Snowden", movieImage: "snowden", isFavorite: false)
        let movieFive = Movie(movieName: "All Bright Places", movieImage: "all-bright", isFavorite: false)
        let movieSix = Movie(movieName: "Miracle in the Cell No. 7", movieImage: "miracle", isFavorite: false)
        let movieSeven = Movie(movieName: "Doctor Strange", movieImage: "doctor-strange", isFavorite: true)
        let movieEight = Movie(movieName: "Captain Marvel", movieImage: "captain-marvel", isFavorite: true)
        let movieNine = Movie(movieName: "Enola Helmes", movieImage: "enola-holmes", isFavorite: true)
        let movieTen = Movie(movieName: "The Pursuit of Happyness", movieImage: "happyness", isFavorite: true)
        let movieEleven = Movie(movieName: "V for Vendetta", movieImage: "vendetta", isFavorite: true)
        let movieTwelve = Movie(movieName: "Life of Pi", movieImage: "life-of-pi", isFavorite: false)
        let movieThirteen = Movie(movieName: "Black Panther", movieImage: "black-panther", isFavorite: true)
        let movieFourteen = Movie(movieName: "The Lion King - 1994", movieImage: "the-lion-king", isFavorite: true)
        let movieFifteen = Movie(movieName: "Karate Kid", movieImage: "karate-kid", isFavorite: true)
        
        DataMovies.movies.append(movieOne)
        DataMovies.movies.append(movieTwo)
        DataMovies.movies.append(movieThree)
        DataMovies.movies.append(movieFour)
        DataMovies.movies.append(movieFive)
        DataMovies.movies.append(movieSix)
        DataMovies.movies.append(movieSeven)
        DataMovies.movies.append(movieEight)
        DataMovies.movies.append(movieNine)
        DataMovies.movies.append(movieTen)
        DataMovies.movies.append(movieEleven)
        DataMovies.movies.append(movieTwelve)
        DataMovies.movies.append(movieThirteen)
        DataMovies.movies.append(movieFourteen)
        DataMovies.movies.append(movieFifteen)
    }
    
    

    @IBAction func btnLogin(_ sender: Any) {
        if (txtUserName.text == "lele" && txtPassword.text == "myfavs") {
            performSegue(withIdentifier: "nextScreen", sender: self)
            DataMovies.movies.removeAll()
            allMovies()
        } else {
            let errorAlert = UIAlertController(title: "Erro ao tentar acessar!", message: "Dados incorretos! Por favor tente novamente.", preferredStyle: UIAlertController.Style.alert)
            
            errorAlert.addAction(UIAlertAction.init(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(errorAlert, animated: true, completion: nil)
    }
    
}

}
