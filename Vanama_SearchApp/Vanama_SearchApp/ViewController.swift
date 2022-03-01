//
//  ViewController.swift
//  Vanama_SearchApp
//
//  Created by Vanama,Mohith Naga Venkata Sai on 2/23/22.
//

import UIKit

class ViewController: UIViewController {
    var actors_Keyword = ["ironman","drstranger","hulk","wanda","captainamerica"]
    var animals_keyword = ["lion","chettah","elephant","monkey","tiger"]
    var flowers_keyword = ["rose","lily","sunflower","cassia","jasmine"]
    
    
    var topic_actors = ["Iron Man is a superhero appearing in American comic books published by Marvel Comics. The character was co-created by writer and editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby. The character made his first appearance in Tales of Suspense #39 (cover dated March 1963), and received his own title in Iron Man #1 (May 1968).","Doctor Stephen Strange is a fictional character appearing in American comic books published by Marvel Comics. Created by Steve Ditko with Stan Lee,[5] the character first appeared in Strange Tales #110 (cover-dated July 1963). Doctor Strange serves as the Sorcerer Supreme, the primary protector of Earth against magical and mystical threats.","The Hulk is a fictional superhero appearing in publications by the American publisher Marvel Comics. Created by writer Stan Lee and artist Jack Kirby, the character first appeared in the debut issue of The Incredible Hulk (May 1962).","The Scarlet Witch (Wanda Maximoff) is a fictional character appearing in American comic books published by Marvel Comics. The character was created by writer Stan Lee and artist Jack Kirby. Her first appearance was in The X-Men #4 (March 1964) in the Silver Age of Comic Books.","Captain America is a superhero appearing in American comic books published by Marvel Comics. "]
    
    var topic_animals = ["The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail.","The cheetah (Acinonyx jubatus) is a large cat native to Africa and central Iran. It is the fastest land animal, estimated to be capable of running at 80 to 128 km/h (50 to 80 mph) with the fastest reliably recorded speed","Elephants are the largest existing land animals. Three living species are currently recognised: the African bush elephant, the African forest elephant, and the Asian elephant. ","Monkey is a common name that may refer to most mammals of the infraorder Simiiformes, also known as the simians. Traditionally, all animals in the group now known as simians are counted as monkeys except the apes, a grouping known as paraphyletic","The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates such as deer and wild boar."]
    
    var topic_flowers = ["A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars.[citation needed] They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles.","lily  is a genus of herbaceous flowering plants growing from bulbs, all with large prominent flowers. They are the true lilies. Lilies are a group of flowering plants which are important in culture and literature in much of the world.","The sunflower (Helianthus annuus) is a living annual plant in the family Asteraceae, with a large flower head (capitulum). The stem of the flower can grow up to 3 metres tall, with a flower head that can be 30 cm wide. Other types of sunflowers include the California Royal Sunflower, which has a burgundy (red + purple) flower head.","Cassia fistula, commonly known as golden shower,[2] purging cassia,[3] Indian laburnum,[4] or pudding-pipe tree,[5] is a flowering plant in the subfamily, Caesalpinioideae of the legume family, Fabaceae. The species is native to the Indian subcontinent and adjacent regions of Southeast Asia.","Jasmine (taxonomic name: Jasminum; /ˈjæsmɪnəm/, YASS-min-əm[5]) is a genus of shrubs and vines in the olive family (Oleaceae). It contains around 200 species native to tropical and warm temperate regions of Eurasia, Africa, and Oceania. Jasmines are widely cultivated for the characteristic fragrance of their flowers. A number of unrelated plants contain the word in their common names"]
    
    var search = ["actors","animals","flowers"]
    var imgNumber = 0
    var str = ""
    var cnt = 0
    var arr = -1
    var actor = -1
    var flower = -1
    var animal = -1
    var count = 0
    

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchBtn: UIButton!
    
    @IBOutlet weak var prevBtn: UIButton!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBtn.isEnabled = false
        resultImage.image = UIImage(named: "welcome")
        prevBtn.isHidden = true
        nextBtn.isHidden = true
        resetBtn.isHidden = true
        searchBtn.backgroundColor = .lightGray
        
    }


    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        cnt = 0
        imgNumber = 0
        var cntt = 0
        actor = -1
        arr = -1
        flower = -1
        animal = -1
        for sch in search{
            if(sch == searchTextField.text!)
            {
                str = sch
                arr = cnt
                
                  imgAndTextUpdate(imgNumber)
                  nextBtn.isHidden = false
                  prevBtn.isHidden = false
                  searchBtn.isEnabled = false
                  searchBtn.backgroundColor = .lightGray
                  searchTextField.text = ""
                  resetBtn.isEnabled = true
                  cntt = cntt + 1
           
           }
            cnt = cnt + 1
        }
        cnt = 0
        for sch in actors_Keyword{
            if(sch == searchTextField.text!)
            {
                str = sch
                //arr = cnt
                actor = cnt
                  imgAndTextUpdate(imgNumber)
                  nextBtn.isHidden = false
                  prevBtn.isHidden = false
                  searchBtn.isEnabled = false
                  searchBtn.backgroundColor = .lightGray
                  searchTextField.text = ""
                  resetBtn.isEnabled = true
                  cntt = cntt + 1
           
           }
            cnt = cnt + 1
        }
        cnt = 0
        for sch in animals_keyword{
            if(sch == searchTextField.text!)
            {
                str = sch
                //arr = cnt
                animal = cnt
                  imgAndTextUpdate(imgNumber)
                  nextBtn.isHidden = false
                  prevBtn.isHidden = false
                  searchBtn.isEnabled = false
                  searchBtn.backgroundColor = .lightGray
                  searchTextField.text = ""
                  resetBtn.isEnabled = true
                  cntt = cntt + 1
           
           }
            cnt = cnt + 1
        }
        cnt = 0
        for sch in flowers_keyword{
            if(sch == searchTextField.text!)
            {
                str = sch
                //arr = cnt
                flower = cnt
                  imgAndTextUpdate(imgNumber)
                  nextBtn.isHidden = false
                  prevBtn.isHidden = false
                  searchBtn.isEnabled = false
                  searchBtn.backgroundColor = .lightGray
                  searchTextField.text = ""
                  resetBtn.isEnabled = true
                  cntt = cntt + 1
           
           }
            cnt = cnt + 1
        }
        
        if(cntt == 0)
        {
            resultImage.image = UIImage(named: "searchnot")
            nextBtn.isHidden = true
            prevBtn.isHidden = true
            resetBtn.isHidden = false
            resetBtn.isEnabled = true
            topicInfoText.text = ""
            searchTextField.text = ""
        }
    }
    
    @IBAction func searchTextAction(_ sender: UITextField) {
       if(searchTextField.text != "")
        {
           searchBtn.backgroundColor = .systemBlue
           searchBtn.isEnabled = true
           
       }
        count = 0
    }
    
    @IBAction func showPrevImagesBtn(_ sender: UIButton) {
        imgNumber = imgNumber-1
        imgAndTextUpdate(imgNumber)
    }
    
    @IBAction func showNextImgBtn(_ sender: UIButton) {
        imgNumber = imgNumber+1
        imgAndTextUpdate(imgNumber)
        
    }
    

    @IBAction func resetButton(_ sender: UIButton) {
        imgNumber = 0
        searchBtn.isEnabled = false
        resultImage.image = UIImage(named: "welcome")
        prevBtn.isHidden = true
        nextBtn.isHidden = true
        resetBtn.isEnabled = false
        searchBtn.backgroundColor = .lightGray
        topicInfoText.text = ""
        resetBtn.isHidden = true
        searchTextField.text = ""
        count = 0
        
    }
    func imgAndTextUpdate(_ imageNumber: Int){
       if(arr == 0)
        {
        resultImage.image = UIImage(named: actors_Keyword[imgNumber])
        topicInfoText.text = topic_actors[imgNumber]
       }
        else if (arr == 1)
        {
            resultImage.image = UIImage(named: animals_keyword[imgNumber])
            topicInfoText.text = topic_animals[imgNumber]
        }
        else{
            resultImage.image = UIImage(named: flowers_keyword[imgNumber])
            topicInfoText.text = topic_flowers[imgNumber]
        }
        if(actor > -1)
        {
            count = count + 1
            if(count == 1){
            imgNumber = actor
            }
            resultImage.image = UIImage(named: actors_Keyword[imgNumber])
            topicInfoText.text = topic_actors[imgNumber]
        }
        if(animal > -1)
        {
            count = count + 1
            if(count == 1){
            imgNumber = animal
            }
            resultImage.image = UIImage(named: animals_keyword[imgNumber])
            topicInfoText.text = topic_animals[imgNumber]
        }
        if(flower > -1)
        {
            count = count + 1
            if(count == 1){
            imgNumber = flower
            }
            resultImage.image = UIImage(named: flowers_keyword[imgNumber])
            topicInfoText.text = topic_flowers[imgNumber]
        }
        if(imgNumber == 0)
        {
            prevBtn.isEnabled = false
            prevBtn.backgroundColor = .lightGray
        }
        else{
            prevBtn.isEnabled = true
            prevBtn.backgroundColor = .systemBlue
        }
        if(imgNumber == 4)
        {
            nextBtn.isEnabled = false
            nextBtn.backgroundColor = .lightGray
        }
        else{
            nextBtn.isEnabled = true
            nextBtn.backgroundColor = .systemBlue
        }
        resetBtn.isHidden = false

    }
    
}

