//
//  Travelmodel.swift
//  HeroTheTravelAgent
//
//  Created by HarshPipaliya on 29/03/2022.
//

import Foundation

//  Sample Data
class Travel: Identifiable {
    var id: Int?
    var image: String?
    var title: String?
    var desc: String?
    
    init() {}
    
    init(id: Int, image: String, title: String, desc: String) {
        self.id = id
        self.image = image
        self.title = title
        self.desc = desc
    }
    
    func all() -> [Travel] {
        return [
            Travel(id: 0, image: "Prague", title: "Prague", desc: "Prague, capital city of the Czech Republic, is bisected by the Vltava River. Nicknamed “the City of a Hundred Spires,” it's known for its Old Town Square, the heart of its historic core, with colorful baroque buildings, Gothic churches and the medieval Astronomical Clock, which gives an animated hourly show. Completed in 1402, pedestrian Charles Bridge is lined with statues of Catholic saints."),
            Travel(id: 1, image: "Paris", title: "Paris", desc: "Also known as the Latin Quarter, the 5th arrondissement is home to the Sorbonne university and student-filled cafes. It's also known for its bookshops, including the famed Shakespeare & Company. Family-friendly attractions include the Jardin des Plantes botanical gardens and the National Museum of Natural History. The stately Panthéon building holds the remains of notables like Voltaire and Marie Curie"),
            Travel(id: 2, image: "San Francisco", title: "San Francisco", desc: "San Francisco, officially the City and County of San Francisco, is a cultural, commercial, and financial center in the U.S. state of California."),
            Travel(id: 3, image: "Rome", title: "Rome", desc: "Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale."),
            Travel(id: 4, image: "Udaipur", title: "Udaipur", desc: "Udaipur, formerly the capital of the Mewar Kingdom, is a city in the western Indian state of Rajasthan. Founded by Maharana Udai Singh II in 1559, it’s set around a series of artificial lakes and is known for its lavish royal residences. City Palace, overlooking Lake Pichola, is a monumental complex of 11 palaces, courtyards and gardens, famed for its intricate peacock mosaics. "),
            Travel(id: 5, image: "Amsterdam", title: "Amsterdam", desc: "Amsterdam is the Netherlands’ capital, known for its artistic heritage, elaborate canal system and narrow houses with gabled facades, legacies of the city’s 17th-century Golden Age. Its Museum District houses the Van Gogh Museum, works by Rembrandt and Vermeer at the Rijksmuseum, and modern art at the Stedelijk. Cycling is key to the city’s character, and there are numerous bike paths"),
            Travel(id: 6, image: "Rio De Janeiro", title: "Rio De Janeiro", desc: "Rio de Janeiro is a huge seaside city in Brazil, famed for its Copacabana and Ipanema beaches, 38m Christ the Redeemer statue atop Mount Corcovado and for Sugarloaf Mountain, a granite peak with cable cars to its summit. The city is also known for its sprawling favelas (shanty towns). Its raucous Carnaval festival, featuring parade floats, flamboyant costumes and samba dancers, is considered the world’s largest."),
            Travel(id: 7, image: "Dubai", title: "Dubai", desc: "Dubai is a city and emirate in the United Arab Emirates known for luxury shopping, ultramodern architecture and a lively nightlife scene. Burj Khalifa, an 830m-tall tower, dominates the skyscraper-filled skyline. At its foot lies Dubai Fountain, with jets and lights choreographed to music. On artificial islands just offshore is Atlantis, The Palm, a resort with water and marine-animal parks."),
            Travel(id: 8, image: "Barcelona", title: "Barcelona", desc: "Barcelona, the cosmopolitan capital of Spain’s Catalonia region, is known for its art and architecture. The fantastical Sagrada Família church and other modernist landmarks designed by Antoni Gaudí dot the city. Museu Picasso and Fundació Joan Miró feature modern art by their namesakes. City history museum MUHBA, includes several Roman archaeological sites."),
            Travel(id: 9, image: "Cape Town", title: "Cape Town", desc: "Cape Town is a port city on South Africa’s southwest coast, on a peninsula beneath the imposing Table Mountain. Slowly rotating cable cars climb to the mountain’s flat top, from which there are sweeping views of the city, the busy harbor and boats heading for Robben Island, the notorious prison that once held Nelson Mandela, which is now a living museum."),
        ]
    }
}
