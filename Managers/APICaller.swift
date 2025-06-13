

import Foundation


struct Constants {
    static let API_KEY = "697d439ac993538da4e3e60b54e762cd"
    static let baseURL = "https://api.themoviedb.org"
    static let YoutubeAPI_KEY = "AIzaSyBrWFD8lJ1x4HasOkO0VR-i4lH4MIeogdc"
    static let YoutubeBaseURL = "https://youtube.googleapis.com/youtube/v3/search?"
}

enum APIError: Error {
    case failedTogetData
}

class APICaller {
    static let shared = APICaller()
    
    
    
//    func getTrendingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
//        guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else {return}
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//
//            do {
//                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
//                completion(.success(results.results))
//
//            } catch {
//                completion(.failure(APIError.failedTogetData))
//            }
//        }
//
//        task.resume()
//    }
    
    
 
    
    func getTrendingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
        let jsonString = """
        {
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/kEYWal656zP5Q2Tohm91aw6orlT.jpg",
                    "genre_ids": [18, 35, 10749],
                    "id": 1064213,
                    "original_language": "en",
                    "original_title": "Anora",
                    "overview": "A young sex worker from Brooklyn gets her chance at a Cinderella story when she meets and impulsively marries the son of an oligarch. Once the news reaches Russia, her fairytale is threatened as his parents set out to get the marriage annulled.",
                    "popularity": 65.4378,
                    "poster_path": "/7MrgIUeq0DD2iF7GR6wqJfYZNeC.jpg",
                    "release_date": "2024-10-14",
                    "title": "Anora",
                    "video": false,
                    "vote_average": 7.052,
                    "vote_count": 2223
                },
                {
                    "adult": false,
                    "backdrop_path": "/wIZ6cPH9lGC03gM0U6Es05afcSZ.jpg",
                    "genre_ids": [27, 53],
                    "id": 1233413,
                    "original_language": "en",
                    "original_title": "Sinners",
                    "overview": "Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.",
                    "popularity": 205.1203,
                    "poster_path": "/jYfMTSiFFK7ffbY2lay4zyvTkEk.jpg",
                    "release_date": "2025-04-16",
                    "title": "Sinners",
                    "video": false,
                    "vote_average": 7.518,
                    "vote_count": 916
                },
                {
                    "adult": false,
                    "backdrop_path": "/eQCwbJR5hGxZ9fZMTvujYqeJHpv.jpg",
                    "genre_ids": [18, 35],
                    "id": 1417059,
                    "original_language": "en",
                    "original_title": "Mountainhead",
                    "overview": "A group of billionaire friends get together against the backdrop of a rolling international crisis.",
                    "popularity": 84.1853,
                    "poster_path": "/jZKK5mFKWbquxhAGMkRJtNYwk0I.jpg",
                    "release_date": "2025-05-22",
                    "title": "Mountainhead",
                    "video": false,
                    "vote_average": 5.917,
                    "vote_count": 12
                },
                {
                    "adult": false,
                    "backdrop_path": "/f2tgUFZC6TKqQDshRBW19zvmk7X.jpg",
                    "genre_ids": [16, 10749, 878],
                    "id": 1165642,
                    "original_language": "ko",
                    "original_title": "이 별에 필요한",
                    "overview": "When an astronaut leaves Earth for Mars, the vast infinite space divides star-crossed lovers in this animated romance that crosses the cosmos.",
                    "popularity": 78.3174,
                    "poster_path": "/dXlUIfwejWa9YvugU9V773dUASY.jpg",
                    "release_date": "2025-05-30",
                    "title": "Lost in Starlight",
                    "video": false,
                    "vote_average": 7.5,
                    "vote_count": 9
                },
                {
                    "adult": false,
                    "backdrop_path": "/pOR4Aye28KLZ5Jogu8zc3yiqBpT.jpg",
                    "genre_ids": [53, 9648],
                    "id": 1397832,
                    "original_language": "es",
                    "original_title": "La viuda negra",
                    "overview": "When a man is found dead, the investigation shatters his widow's perfect facade and exposes a hidden double life in this thriller based on real events.",
                    "popularity": 93.909,
                    "poster_path": "/yZOdrJDl2GwREoigC0y40kMosxj.jpg",
                    "release_date": "2025-05-29",
                    "title": "A Widow's Game",
                    "video": false,
                    "vote_average": 6.176,
                    "vote_count": 37
                },
                {
                    "adult": false,
                    "backdrop_path": "/7Zx3wDG5bBtcfk8lcnCWDOLM4Y4.jpg",
                    "genre_ids": [10751, 35, 878],
                    "id": 552524,
                    "original_language": "en",
                    "original_title": "Lilo & Stitch",
                    "overview": "The wildly funny and touching story of a lonely Hawaiian girl and the fugitive alien who helps to mend her broken family.",
                    "popularity": 610.335,
                    "poster_path": "/3bN675X0K2E5QiAZVChzB5wq90B.jpg",
                    "release_date": "2025-05-17",
                    "title": "Lilo & Stitch",
                    "video": false,
                    "vote_average": 7.12,
                    "vote_count": 362
                },
                {
                    "adult": false,
                    "backdrop_path": "/v67tbCB03CMcJRWit8CS7JdJp6.jpg",
                    "genre_ids": [28, 53, 18],
                    "id": 757725,
                    "original_language": "en",
                    "original_title": "Shadow Force",
                    "overview": "Kyrah and Isaac were once the leaders of a multinational special forces group called Shadow Force. They broke the rules by falling in love, and in order to protect their son, they go underground. With a large bounty on their heads, and the vengeful Shadow Force hot on their trail, one family's fight becomes all-out war.",
                    "popularity": 34.2143,
                    "poster_path": "/uX6FaNE86a4Xnf1mFFEryvjqB1D.jpg",
                    "release_date": "2025-05-01",
                    "title": "Shadow Force",
                    "video": false,
                    "vote_average": 6.125,
                    "vote_count": 24
                }
            ]
        }
        """
        
        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedTogetData))
            return
        }
        
        do {
            let result = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
            completion(.success(result.results))
        } catch {
            completion(.failure(error))
        }
    }

//    func getTrendingTvs(completion: @escaping (Result<[Title], Error>) -> Void) {
//        guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else {return}
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//
//            do {
//                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
//                completion(.success(results.results))
//            }
//            catch {
//                completion(.failure(APIError.failedTogetData))
//            }
//        }
//
//        task.resume()
//    }
    
    func getTrendingTvs(completion: @escaping (Result<[Title], Error>) -> Void) {
        let jsonString = """
        {
            "page": 1,
            "results": [
                {
                    "backdrop_path": "/cxejGoxpynd144zaivyEKFxCktm.jpg",
                    "id": 247718,
                    "name": "MobLand",
                    "original_name": "MobLand",
                    "overview": "Two mob families clash in a war that threatens to topple empires and lives.",
                    "poster_path": "/abeH7n5pcuQcwYcTxG6DTZvXLP1.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "en",
                    "genre_ids": [80, 18],
                    "popularity": 81.8166,
                    "first_air_date": "2025-03-30",
                    "vote_average": 8.546,
                    "vote_count": 131,
                    "origin_country": ["GB", "US"]
                },
                {
                    "backdrop_path": "/wIoxMHbyUJnx5Fm9tI26hIYGI1D.jpg",
                    "id": 245703,
                    "name": "Dept. Q",
                    "original_name": "Dept. Q",
                    "overview": "A brash but brilliant cop becomes head of a new police department, where he leads an unlikely team of misfits in solving Edinburgh's cold cases.",
                    "poster_path": "/zOaltlzjjWgtj6vBQiBhNi9wRlo.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "en",
                    "genre_ids": [80, 18, 9648],
                    "popularity": 75.7695,
                    "first_air_date": "2025-05-29",
                    "vote_average": 7.854,
                    "vote_count": 24,
                    "origin_country": ["GB"]
                },
                {
                    "backdrop_path": "/gDtZQmfzvErZpeXOVeCBQE9WkSF.jpg",
                    "id": 239770,
                    "name": "Doctor Who",
                    "original_name": "Doctor Who",
                    "overview": "The Doctor and his companion travel across time and space encountering incredible friends and foes.",
                    "poster_path": "/2JP6NSmBwxg75uTcIHiv5R8PpPi.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "en",
                    "genre_ids": [10759, 18, 10765],
                    "popularity": 31.5719,
                    "first_air_date": "2024-05-11",
                    "vote_average": 6.5,
                    "vote_count": 214,
                    "origin_country": ["GB"]
                },
                {
                    "backdrop_path": "/uQ4lG7E7mlyKsGvbASftQ6Hu2IX.jpg",
                    "id": 100088,
                    "name": "The Last of Us",
                    "original_name": "The Last of Us",
                    "overview": "Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone...",
                    "poster_path": "/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "en",
                    "genre_ids": [18],
                    "popularity": 306.7273,
                    "first_air_date": "2023-01-15",
                    "vote_average": 8.536,
                    "vote_count": 6108,
                    "origin_country": ["US"]
                },
                {
                    "backdrop_path": "/56v2KjBlU4XaOv9rVYEQypROD7P.jpg",
                    "id": 66732,
                    "name": "Stranger Things",
                    "original_name": "Stranger Things",
                    "overview": "When a young boy vanishes, a small town uncovers a mystery involving secret experiments, terrifying supernatural forces, and one strange little girl.",
                    "poster_path": "/uOOtwVbSr4QDjAGIifLDwpb2Pdl.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "en",
                    "genre_ids": [18, 10765, 9648],
                    "popularity": 58.8148,
                    "first_air_date": "2016-07-15",
                    "vote_average": 8.596,
                    "vote_count": 18340,
                    "origin_country": ["US"]
                }
            ],
            "total_pages": 1000,
            "total_results": 20000
        }
        """
        
        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedTogetData))
            return
        }

        do {
            let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
            completion(.success(results.results))
        } catch {
            completion(.failure(APIError.failedTogetData))
        }
    }



    
    
    
//    func getUpcomingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
//        guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//
//            do {
//                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
//                completion(.success(results.results))
//            } catch {
//                print(error.localizedDescription)
//            }
//
//        }
//        task.resume()
//    }
    
    func getUpcomingMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
        let jsonString = """
        {
            "dates": {
                "maximum": "2025-06-25",
                "minimum": "2025-06-04"
            },
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/7Zx3wDG5bBtcfk8lcnCWDOLM4Y4.jpg",
                    "genre_ids": [10751, 35, 878],
                    "id": 552524,
                    "original_language": "en",
                    "original_title": "Lilo & Stitch",
                    "overview": "The wildly funny and touching story of a lonely Hawaiian girl and the fugitive alien who helps to mend her broken family.",
                    "popularity": 610.335,
                    "poster_path": "/3bN675X0K2E5QiAZVChzB5wq90B.jpg",
                    "release_date": "2025-05-17",
                    "title": "Lilo & Stitch",
                    "video": false,
                    "vote_average": 7.167,
                    "vote_count": 356
                },
                {
                    "adult": false,
                    "backdrop_path": "/wIZ6cPH9lGC03gM0U6Es05afcSZ.jpg",
                    "genre_ids": [27, 53],
                    "id": 1233413,
                    "original_language": "en",
                    "original_title": "Sinners",
                    "overview": "Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.",
                    "popularity": 205.1203,
                    "poster_path": "/zrYk9fEhhnNTptnhFeyyFIUBu5d.jpg",
                    "release_date": "2025-04-16",
                    "title": "Sinners",
                    "video": false,
                    "vote_average": 7.514,
                    "vote_count": 911
                },
                {
                    "adult": false,
                    "backdrop_path": "/cJvUJEEQ86LSjl4gFLkYpdCJC96.jpg",
                    "genre_ids": [10752, 28],
                    "id": 1241436,
                    "original_language": "en",
                    "original_title": "Warfare",
                    "overview": "A platoon of Navy SEALs embarks on a dangerous mission in Ramadi, Iraq, with the chaos and brotherhood of war retold through their memories of the event.",
                    "popularity": 181.6846,
                    "poster_path": "/srj9rYrjefyWqkLc6l2xjTGeBGO.jpg",
                    "release_date": "2025-04-09",
                    "title": "Warfare",
                    "video": false,
                    "vote_average": 7.29,
                    "vote_count": 465
                },
                {
                    "adult": false,
                    "backdrop_path": "/d5aBTObiUzqGZMohXtQKY4FMGvb.jpg",
                    "genre_ids": [27],
                    "id": 1297028,
                    "original_language": "en",
                    "original_title": "Rosario",
                    "overview": "Wall Street stockbroker Rosario Fuentes returns to her grandmother's apartment after her sudden death. While sorting through her belongings, Rosario discovers a hidden chamber that's filled with occult artifacts tied to dark generational rituals. As supernatural occurrences begin to plague her, she must confront her family's buried secrets and face the truth about the sacrifices and choices they made.",
                    "popularity": 136.7985,
                    "poster_path": "/h91QHXPCb96x2J5mahqyW8QZay2.jpg",
                    "release_date": "2025-05-01",
                    "title": "Rosario",
                    "video": false,
                    "vote_average": 4.852,
                    "vote_count": 27
                },
                {
                    "adult": false,
                    "backdrop_path": "/lAnkMSDISzMYLWICS7m16rSTUHD.jpg",
                    "genre_ids": [28, 12, 18],
                    "id": 1011477,
                    "original_language": "en",
                    "original_title": "Karate Kid: Legends",
                    "overview": "After a family tragedy, kung fu prodigy Li Fong is uprooted from his home in Beijing and forced to move to New York City with his mother...",
                    "popularity": 97.9191,
                    "poster_path": "/AEgggzRr1vZCLY86MAp93li43z.jpg",
                    "release_date": "2025-05-08",
                    "title": "Karate Kid: Legends",
                    "video": false,
                    "vote_average": 7.2,
                    "vote_count": 62
                },
                {
                    "adult": false,
                    "backdrop_path": "/kESVPJUrMsaEpGnMIH8oYUkARPk.jpg",
                    "genre_ids": [27, 9648],
                    "id": 568770,
                    "original_language": "es",
                    "original_title": "Poseída",
                    "overview": "A girl is possessed by a dark and mysterious entity...",
                    "popularity": 132.3559,
                    "poster_path": "/nHNwBOccmQ7rK9yQI1HUSnHm1Ny.jpg",
                    "release_date": "2025-06-05",
                    "title": "The Containment",
                    "video": false,
                    "vote_average": 8.4,
                    "vote_count": 5
                },
                {
                    "adult": false,
                    "backdrop_path": "/eDBZN0TbWkxoAB0qIDFagVcPPTN.jpg",
                    "genre_ids": [27, 14, 35],
                    "id": 1153714,
                    "original_language": "en",
                    "original_title": "Death of a Unicorn",
                    "overview": "A father and daughter accidentally hit and kill a unicorn while en route to a weekend retreat...",
                    "popularity": 60.598,
                    "poster_path": "/lXR32JepFwD1UHkplWqtBP1K79z.jpg",
                    "release_date": "2025-03-27",
                    "title": "Death of a Unicorn",
                    "video": false,
                    "vote_average": 6.425,
                    "vote_count": 266
                }
            ]
        }
        """

        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedTogetData))
            return
        }

        do {
            let result = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
            completion(.success(result.results))
        } catch {
            completion(.failure(APIError.failedTogetData))
        }
    }

    
    
    
    
//    func getPopular(completion: @escaping (Result<[Title], Error>) -> Void) {
//        guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return}
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//
//            do {
//                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
//                completion(.success(results.results))
//            } catch {
//                completion(.failure(APIError.failedTogetData))
//            }
//        }
//
//        task.resume()
//    }
//
    
    func getPopular(completion: @escaping (Result<[Title], Error>) -> Void) {
        let jsonString = """
        {
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/qFfWFwfaEHzDLWLuttWiYq7Poy2.jpg",
                    "genre_ids": [10767],
                    "id": 2261,
                    "origin_country": ["US"],
                    "original_language": "en",
                    "original_name": "The Tonight Show Starring Johnny Carson",
                    "overview": "The Tonight Show Starring Johnny Carson is a talk show hosted by Johnny Carson under The Tonight Show franchise from 1962 to 1992...",
                    "popularity": 705.6405,
                    "poster_path": "/uSvET5YUvHNDIeoCpErrbSmasFb.jpg",
                    "first_air_date": "1962-10-01",
                    "name": "The Tonight Show Starring Johnny Carson",
                    "vote_average": 7.4,
                    "vote_count": 84
                },
                {
                    "adult": false,
                    "backdrop_path": "/m0bV3qBiJBBlpFaaKjwHo13MVjm.jpg",
                    "genre_ids": [35, 10767],
                    "id": 14981,
                    "origin_country": ["US"],
                    "original_language": "en",
                    "original_name": "The Late Late Show with Craig Ferguson",
                    "overview": "...",
                    "popularity": 673.9898,
                    "poster_path": "/gGC7zSDgG0FY0MbM1pjfhTCWQBI.jpg",
                    "first_air_date": "2005-01-03",
                    "name": "The Late Late Show with Craig Ferguson",
                    "vote_average": 6.8,
                    "vote_count": 102
                },
                {
                    "adult": false,
                    "backdrop_path": "/7jEnft2CLNbILWAiBRIBrXNN7Qh.jpg",
                    "genre_ids": [10767, 35],
                    "id": 498,
                    "origin_country": ["US"],
                    "original_language": "en",
                    "original_name": "Late Show with David Letterman",
                    "overview": "...",
                    "popularity": 621.8061,
                    "poster_path": "/fTBC5EpsgKmli9VQcJMtqQ08Qj4.jpg",
                    "first_air_date": "1993-08-30",
                    "name": "Late Show with David Letterman",
                    "vote_average": 6.303,
                    "vote_count": 152
                },
                {
                    "adult": false,
                    "backdrop_path": "/gMMnf8VRg3Z98WaFmOLr9Jk8pIs.jpg",
                    "genre_ids": [35, 10767],
                    "id": 63770,
                    "origin_country": ["US"],
                    "original_language": "en",
                    "original_name": "The Late Show with Stephen Colbert",
                    "overview": "...",
                    "popularity": 592.7666,
                    "poster_path": "/9jkThAGYj2yp8jsS6Nriy5mzKFT.jpg",
                    "first_air_date": "2015-09-08",
                    "name": "The Late Show with Stephen Colbert",
                    "vote_average": 6.344,
                    "vote_count": 308
                },
                {
                    "adult": false,
                    "backdrop_path": "/kA50bkSC6bw5ZkutYrN9sLD9CZ9.jpg",
                    "genre_ids": [10767, 35],
                    "id": 22980,
                    "origin_country": ["US"],
                    "original_language": "en",
                    "original_name": "Watch What Happens Live with Andy Cohen",
                    "overview": "...",
                    "popularity": 590.0589,
                    "poster_path": "/onSD9UXfJwrMXWhq7UY7hGF2S1h.jpg",
                    "first_air_date": "2009-07-16",
                    "name": "Watch What Happens Live with Andy Cohen",
                    "vote_average": 5.1,
                    "vote_count": 71
                }
            ]
        }
        """
        
        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedTogetData))
            return
        }

        do {
            let result = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
            completion(.success(result.results))
        } catch {
            completion(.failure(APIError.failedTogetData))
        }
    }

    
    
    
    
//    func getTopRated(completion: @escaping (Result<[Title], Error>) -> Void) {
//        guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.API_KEY)&language=en-US&page=1") else {return }
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//
//            do {
//                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
//                completion(.success(results.results))
//
//            } catch {
//                completion(.failure(APIError.failedTogetData))
//            }
//
//        }
//        task.resume()
//    }
    
    func getTopRated(completion: @escaping (Result<[Title], Error>) -> Void) {
        let jsonString = """
        {
            "page": 1,
            "results": [
                {
                    "adult": false,
                    "backdrop_path": "/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg",
                    "genre_ids": [18, 80],
                    "id": 278,
                    "original_language": "en",
                    "original_title": "The Shawshank Redemption",
                    "overview": "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
                    "popularity": 34.7686,
                    "poster_path": "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
                    "release_date": "1994-09-23",
                    "title": "The Shawshank Redemption",
                    "video": false,
                    "vote_average": 8.71,
                    "vote_count": 28365
                },
                {
                    "adult": false,
                    "backdrop_path": "/tmU7GeKVybMWFButWEGl2M4GeiP.jpg",
                    "genre_ids": [18, 80],
                    "id": 238,
                    "original_language": "en",
                    "original_title": "The Godfather",
                    "overview": "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.",
                    "popularity": 42.3841,
                    "poster_path": "/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
                    "release_date": "1972-03-14",
                    "title": "The Godfather",
                    "video": false,
                    "vote_average": 8.686,
                    "vote_count": 21483
                },
                {
                    "adult": false,
                    "backdrop_path": "/kGzFbGhp99zva6oZODW5atUtnqi.jpg",
                    "genre_ids": [18, 80],
                    "id": 240,
                    "original_language": "en",
                    "original_title": "The Godfather Part II",
                    "overview": "In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.",
                    "popularity": 16.0231,
                    "poster_path": "/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
                    "release_date": "1974-12-20",
                    "title": "The Godfather Part II",
                    "video": false,
                    "vote_average": 8.57,
                    "vote_count": 12977
                },
                {
                    "adult": false,
                    "backdrop_path": "/zb6fM1CX41D9rF9hdgclu0peUmy.jpg",
                    "genre_ids": [18, 36, 10752],
                    "id": 424,
                    "original_language": "en",
                    "original_title": "Schindler's List",
                    "overview": "The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.",
                    "popularity": 24.1354,
                    "poster_path": "/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg",
                    "release_date": "1993-12-15",
                    "title": "Schindler's List",
                    "video": false,
                    "vote_average": 8.564,
                    "vote_count": 16457
                },
                {
                    "adult": false,
                    "backdrop_path": "/bxgTSUenZDHNFerQ1whRKplrMKF.jpg",
                    "genre_ids": [18],
                    "id": 389,
                    "original_language": "en",
                    "original_title": "12 Angry Men",
                    "overview": "The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, and each other.",
                    "popularity": 20.3274,
                    "poster_path": "/ow3wq89wM8qd5X7hWKxiRfsFf9C.jpg",
                    "release_date": "1957-04-10",
                    "title": "12 Angry Men",
                    "video": false,
                    "vote_average": 8.548,
                    "vote_count": 9148
                }
            ]
        }
        """
        
        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedTogetData))
            return
        }
        
        do {
            let result = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
            completion(.success(result.results))
        } catch {
            completion(.failure(error))
        }
    }

    
    
    
    func getDiscoverMovies(completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/discover/movie?api_key=\(Constants.API_KEY)&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate") else {return }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
                completion(.success(results.results))

            } catch {
                completion(.failure(APIError.failedTogetData))
            }

        }
        task.resume()
    }
    
    
//    func search(with query: String, completion: @escaping (Result<[Title], Error>) -> Void) {
//        
//        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
//        guard let url = URL(string: "\(Constants.baseURL)/3/search/movie?api_key=\(Constants.API_KEY)&query=\(query)") else {
//            return
//        }
//        
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//            
//            do {
//                let results = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
//                completion(.success(results.results))
//
//            } catch {
//                completion(.failure(APIError.failedTogetData))
//            }
//
//        }
//        task.resume()
//    }
    
    func search(with query: String,completion: @escaping (Result<[Title], Error>) -> Void) {
        let jsonString = """
                {
                    "page": 1,
                    "results": [
                        {
                            "adult": false,
                            "backdrop_path": "/kXfqcdQKsToO0OUXHcrrNCHDBzO.jpg",
                            "genre_ids": [18, 80],
                            "id": 278,
                            "original_language": "en",
                            "original_title": "The Shawshank Redemption",
                            "overview": "Imprisoned in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an amoral warden. During his long stretch in prison, Dufresne comes to be admired by the other inmates -- including an older prisoner named Red -- for his integrity and unquenchable sense of hope.",
                            "popularity": 34.7686,
                            "poster_path": "/9cqNxx0GxF0bflZmeSMuL5tnGzr.jpg",
                            "release_date": "1994-09-23",
                            "title": "The Shawshank Redemption",
                            "video": false,
                            "vote_average": 8.71,
                            "vote_count": 28365
                        },
                        {
                            "adult": false,
                            "backdrop_path": "/tmU7GeKVybMWFButWEGl2M4GeiP.jpg",
                            "genre_ids": [18, 80],
                            "id": 238,
                            "original_language": "en",
                            "original_title": "The Godfather",
                            "overview": "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.",
                            "popularity": 42.3841,
                            "poster_path": "/3bhkrj58Vtu7enYsRolD1fZdja1.jpg",
                            "release_date": "1972-03-14",
                            "title": "The Godfather",
                            "video": false,
                            "vote_average": 8.686,
                            "vote_count": 21483
                        },
                        {
                            "adult": false,
                            "backdrop_path": "/kGzFbGhp99zva6oZODW5atUtnqi.jpg",
                            "genre_ids": [18, 80],
                            "id": 240,
                            "original_language": "en",
                            "original_title": "The Godfather Part II",
                            "overview": "In the continuing saga of the Corleone crime family, a young Vito Corleone grows up in Sicily and in 1910s New York. In the 1950s, Michael Corleone attempts to expand the family business into Las Vegas, Hollywood and Cuba.",
                            "popularity": 16.0231,
                            "poster_path": "/hek3koDUyRQk7FIhPXsa6mT2Zc3.jpg",
                            "release_date": "1974-12-20",
                            "title": "The Godfather Part II",
                            "video": false,
                            "vote_average": 8.57,
                            "vote_count": 12977
                        },
                        {
                            "adult": false,
                            "backdrop_path": "/zb6fM1CX41D9rF9hdgclu0peUmy.jpg",
                            "genre_ids": [18, 36, 10752],
                            "id": 424,
                            "original_language": "en",
                            "original_title": "Schindler's List",
                            "overview": "The true story of how businessman Oskar Schindler saved over a thousand Jewish lives from the Nazis while they worked as slaves in his factory during World War II.",
                            "popularity": 24.1354,
                            "poster_path": "/sF1U4EUQS8YHUYjNl3pMGNIQyr0.jpg",
                            "release_date": "1993-12-15",
                            "title": "Schindler's List",
                            "video": false,
                            "vote_average": 8.564,
                            "vote_count": 16457
                        },
                        {
                            "adult": false,
                            "backdrop_path": "/bxgTSUenZDHNFerQ1whRKplrMKF.jpg",
                            "genre_ids": [18],
                            "id": 389,
                            "original_language": "en",
                            "original_title": "12 Angry Men",
                            "overview": "The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young Spanish-American is guilty or innocent of murdering his father. What begins as an open and shut case soon becomes a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, and each other.",
                            "popularity": 20.3274,
                            "poster_path": "/ow3wq89wM8qd5X7hWKxiRfsFf9C.jpg",
                            "release_date": "1957-04-10",
                            "title": "12 Angry Men",
                            "video": false,
                            "vote_average": 8.548,
                            "vote_count": 9148
                        }
                    ]
                }
        """

        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedTogetData))
            return
        }

        do {
            let decodedResponse = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
            completion(.success(decodedResponse.results))
        } catch {
            completion(.failure(error))
        }
    }

    
//    func getMovie(with query: String,completion: @escaping (Result<[Title], Error>) -> Void) {
//        let jsonString = """
//        {
//            "page": 1,
//            "results": [
//                {
//                    "adult": false,
//                    "backdrop_path": "/nAxGnGHOsfzufThz20zgmRwKur3.jpg",
//                    "genre_ids": [
//                        27,
//                        53
//                    ],
//                    "id": 1233413,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "Trying to leave their troubled lives behind, twin brothers return to their hometown to start again, only to discover that an even greater evil is waiting to welcome them back.",
//                    "popularity": 315.5569,
//                    "poster_path": "/jYfMTSiFFK7ffbY2lay4zyvTkEk.jpg",
//                    "release_date": "2025-04-16",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 7.506,
//                    "vote_count": 1014
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [
//                        53
//                    ],
//                    "id": 328358,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "Love is in the air in a small Italian neighborhood of New York. But, is it safe to cheat on your wife, with your cousin, whose brother owns a shotgun and whose hobby is blowing up cars?",
//                    "popularity": 1.3774,
//                    "poster_path": null,
//                    "release_date": "1990-01-29",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 2.0,
//                    "vote_count": 3
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [
//                        18
//                    ],
//                    "id": 65037,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "Powerful drama set in 1960s Ireland about a young, unmarried mother-to-be whose family sends her to a convent. There, out of sight of society, her work in the laundry provides her with close friendships, which bring hope and relief from daily prayer and penance. (Radio Times)",
//                    "popularity": 1.7592,
//                    "poster_path": "/yz3R0vkgLLYzoTtsqn2tAT2TrwD.jpg",
//                    "release_date": "2002-03-26",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 7.3,
//                    "vote_count": 3
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [
//                        27,
//                        53
//                    ],
//                    "id": 527219,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "Three people, who were somehow the reason behind the misery and death of a preacher, are kidnapped by him and hidden at an abandoned place. He vows to take revenge for his sufferings and puts the three people through a gruesome time. The kidnapped people include a drug dealer, an alcoholic and a whore. The preacher is now a psychopath and he will go to any extents to extract his revenge. Will they survive Or is it going to be a case of dead and forgotten.",
//                    "popularity": 0.2573,
//                    "poster_path": null,
//                    "release_date": "",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 0
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [
//                        28
//                    ],
//                    "id": 277100,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "A twisting, turning action extravaganza where the mob mercenaries and the feds are all trying to find the Diamonds. In a final bloody confrontation these three forces meet to settle the issue once and for all!",
//                    "popularity": 0.2073,
//                    "poster_path": null,
//                    "release_date": "2004-01-01",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 0
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [],
//                    "id": 1033890,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "In a city full of sinners who should be forgiven?",
//                    "popularity": 0.1167,
//                    "poster_path": null,
//                    "release_date": "",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 0
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [
//                        18,
//                        10749
//                    ],
//                    "id": 872947,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "Mary Horton, a country girl, moves to New York to make her living as a seamstress, where she meets Hilda Newton, an old neighbor who has renounced her country ways for the immoral life of the city. Mary moves in with Hilda and meets Bob Merrick who, charmed by the girl's innocence determines to protect her.",
//                    "popularity": 0.0555,
//                    "poster_path": null,
//                    "release_date": "1920-03-15",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 0
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [],
//                    "id": 727129,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "A troubled man consults a priest.",
//                    "popularity": 0.1989,
//                    "poster_path": "/q28chCnkZkRFH5SQP6bQFHbql5Z.jpg",
//                    "release_date": "2013-05-02",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 0
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/pvPvg8k7tfER4xPFJ4edPcx7ImC.jpg",
//                    "genre_ids": [
//                        16,
//                        878,
//                        80
//                    ],
//                    "id": 559562,
//                    "original_language": "ja",
//                    "original_title": "PSYCHO-PASS サイコパス Sinners of the System Case.2「First Guardian」",
//                    "overview": "2112; the summer before Akane Tsunemori was assigned to Division One of the Public Safety Bureau's Criminal Investigation Department. Teppei Sugo, an accomplished pilot of the Defense Army's 15th Integrated Task Force, joins the military operation in Okinawa. Three months later, an unmanned combat drone opens fire on the Ministry of Defense in Tokyo. Enforcer Tomomi Masaoka of CID Division One is dispatched to Sugo's military base to investigate the truth behind this case.",
//                    "popularity": 4.0875,
//                    "poster_path": "/3Xm1hgIcmKJGnaMetErNu5kA8qz.jpg",
//                    "release_date": "2019-02-15",
//                    "title": "Psycho-Pass: Sinners of the System - Case.2 First Guardian",
//                    "video": false,
//                    "vote_average": 6.8,
//                    "vote_count": 65
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/pieDnLArEw43kZxYejn3XbrNZdg.jpg",
//                    "genre_ids": [
//                        16,
//                        878,
//                        80
//                    ],
//                    "id": 510242,
//                    "original_language": "ja",
//                    "original_title": "PSYCHO-PASS サイコパス Sinners of the System Case.1「罪と罰」",
//                    "overview": "In the winter of 2117, a runaway vehicle crashes into the Public Safety Bureau Building. The driver is identified as Izumi Yasaka, a psychological counselor at the Sanctuary, a Latent Criminal Isolation Facility in Aomori Prefecture. But right before her interrogation, Inspector Mika Shimotsuki and Enforcer Nobuchika Ginoza are tasked with promptly escorting Yasaka back to Aomori. What awaits them there is a False Paradise.",
//                    "popularity": 3.8566,
//                    "poster_path": "/qnG8ZcmQoncPB58RZwy3wofxm5y.jpg",
//                    "release_date": "2019-01-25",
//                    "title": "Psycho-Pass: Sinners of the System - Case.1 Crime and Punishment",
//                    "video": false,
//                    "vote_average": 6.7,
//                    "vote_count": 83
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [],
//                    "id": 1361920,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "For 33 years, a college professor from Southern California escorted more than 1,000 students on 113 weeklong tours of prisons across the state. He also created numerous programs that he administered within those prisons. In each program, students came face to face with thousands of incarcerated men and women in ways that opened students' eyes and minds in dramatic and unpredictable ways. In a word, students found humanity in people and places where they had previously imagined none to exist. Those lessons inspired that professor to craft a poem, called \"Sinners,\" to capture what those experiences meant to thousands of students. \"Sinners\" is read against the backdrop of illustrative scenes from Sutton's many award-winning prison documentaries.",
//                    "popularity": 0.1388,
//                    "poster_path": null,
//                    "release_date": "2024-05-02",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 0
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [
//                        27
//                    ],
//                    "id": 1431922,
//                    "original_language": "en",
//                    "original_title": "Sinners",
//                    "overview": "Robert and Shane fall into a horrifying trap orchestrated to wash away their previous sins.",
//                    "popularity": 0.1244,
//                    "poster_path": "/hkGnmeGfmN08mI2Z7QVGdCXGaTo.jpg",
//                    "release_date": "2022-04-29",
//                    "title": "Sinners",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 0
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/dsPiNuzzP3EiWTXkXxkclujzSxZ.jpg",
//                    "genre_ids": [
//                        18,
//                        27
//                    ],
//                    "id": 29187,
//                    "original_language": "it",
//                    "original_title": "La monaca nel peccato",
//                    "overview": "Convent of Sinners is the story of Susanna, a young girl who is raped by her own father and sent to a convent for her sins, where she falls in love with a priest. The other nuns, however, are jealous and angry, they want Susanna for themselves, and accuse her of being possessed by the Devil.",
//                    "popularity": 0.926,
//                    "poster_path": "/1L0BEF5ymuJeAW05fSGMB849Fnq.jpg",
//                    "release_date": "1986-08-09",
//                    "title": "Convent of Sinners",
//                    "video": false,
//                    "vote_average": 5.1,
//                    "vote_count": 26
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/h5gSLRhquJEkXz7qmu8HhBN2x4p.jpg",
//                    "genre_ids": [
//                        16,
//                        14,
//                        9648,
//                        10749
//                    ],
//                    "id": 23166,
//                    "original_language": "ja",
//                    "original_title": "劇場版「空の境界」第六章 忘却録音",
//                    "overview": "January 1999: Apprentice mage Azaka Kokutou, Mikiya's younger sister, has been ordered by her mentor, Touko Aozaki, to investigate a certain incident in which fairies steal the memories of students at Azaka's school, Reien Academy. Azaka launches an investigation with the help of Shiki.",
//                    "popularity": 4.3641,
//                    "poster_path": "/fbZeNT66ZUsCOCOeFpL2a4zjwiN.jpg",
//                    "release_date": "2008-12-20",
//                    "title": "The Garden of Sinners: Oblivion Recording",
//                    "video": false,
//                    "vote_average": 6.8,
//                    "vote_count": 84
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/yx96Xz7ggs7TMmDqAa8G5oJ5ami.jpg",
//                    "genre_ids": [
//                        37,
//                        28
//                    ],
//                    "id": 1111140,
//                    "original_language": "en",
//                    "original_title": "Two Sinners and a Mule",
//                    "overview": "Kicked out of a small Western town for sinful behavior, free-spirited Alice and Nora set out for Virginia City to pursue their dream of opening a restaurant. Out on the prairie, they come across an injured bounty hunter named Elden. Hoping to share in the reward, they nurse Elden back to health and help him stalk his prey, Grimes. But as Nora and Alice both develop feelings for Elden, no one notices that Grimes is now on their tail, and the hunters become the hunted…",
//                    "popularity": 1.4952,
//                    "poster_path": "/icL1zn5z1L5ULIpxkuOLjeUgURY.jpg",
//                    "release_date": "2023-04-21",
//                    "title": "Two Sinners and a Mule",
//                    "video": false,
//                    "vote_average": 6.4,
//                    "vote_count": 32
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/oSnOnOW3xo2hPUVDTfKQIU7kd9s.jpg",
//                    "genre_ids": [
//                        16,
//                        878
//                    ],
//                    "id": 212156,
//                    "original_language": "ja",
//                    "original_title": "劇場版 空の境界 未来福音 the Garden of sinners/recalled out summer",
//                    "overview": "A side story of the original Kara no Kyōkai - the Garden of sinners movie series divided into 2 parts. In the first part, Shizune Seo, who finds her life too predictable due to her precognition, and Mitsuru‎ Kamekura, who uses his precognition to be a professional bomber, meet Mikiya and Shiki, respectively, and their futures begin to change. In the second part, 10 years after the original series, Shiki and Mikiya's daughter, Mana Ryōgi, spends a day with Mitsuru.",
//                    "popularity": 2.8796,
//                    "poster_path": "/asizeVk4KzY872J2chv8q6k54WS.jpg",
//                    "release_date": "2013-09-28",
//                    "title": "The Garden of Sinners: Future Gospel",
//                    "video": false,
//                    "vote_average": 7.4,
//                    "vote_count": 70
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/dqlSsdS5PBPgreNYf8mN2H4SVZe.jpg",
//                    "genre_ids": [
//                        28,
//                        9648,
//                        10749,
//                        53,
//                        16
//                    ],
//                    "id": 61666,
//                    "original_language": "ja",
//                    "original_title": "劇場版「空の境界」Remix -Gate of seventh heaven-",
//                    "overview": "Before the release of the final 7th movie, a remix work \"Kara no Kyoukai Remix-Gate of seventh heaven-\" comes out in theaters on March 14, 2009. This remix collection extracts the key themes and scenes from first six movies. The hour long movie is organized in chronological order, beginning from the 2nd movie, followed by the 4th, 3rd, 1st, 5th and 6th. It's a mixture of mostly existing scenes, and some new scenes.",
//                    "popularity": 2.4126,
//                    "poster_path": "/j4uZ7LlBr9wGCx1X7Ftc2fmZuXH.jpg",
//                    "release_date": "2009-03-14",
//                    "title": "The Garden of Sinners: Remix -Gate of seventh heaven",
//                    "video": false,
//                    "vote_average": 7.2,
//                    "vote_count": 18
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/erlQ6H11Ifz91G7UR9M4YUyFF9b.jpg",
//                    "genre_ids": [
//                        18,
//                        10749
//                    ],
//                    "id": 616116,
//                    "original_language": "en",
//                    "original_title": "Sinners Wanted",
//                    "overview": "An unconventional pastor is ridiculed by his hypocritical church congregation after he rescues an unforgiven prostitute.",
//                    "popularity": 1.0432,
//                    "poster_path": "/cfYqbwUXD4H0yawoREpPV89oxNr.jpg",
//                    "release_date": "2018-02-18",
//                    "title": "Sinners Wanted",
//                    "video": false,
//                    "vote_average": 0.0,
//                    "vote_count": 1
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": null,
//                    "genre_ids": [
//                        80
//                    ],
//                    "id": 137340,
//                    "original_language": "fr",
//                    "original_title": "Rafles sur la ville",
//                    "overview": "Michel Piccoli plays a police inspector whose best friend is murdered on the orders of gang boss Charles Vanel. The inspector knows full well that Vanel is too crafty and well-connected to ever stand trial for his crime, so he carefully lays a subtle trap for his adversary. Unfortunately, both Piccoli and Vanel are thwarted by a pair of scheming females.",
//                    "popularity": 0.6581,
//                    "poster_path": "/7mCv4fwZgHaNIL13dNn0MY6Lh4p.jpg",
//                    "release_date": "1958-01-15",
//                    "title": "Sinners of Paris",
//                    "video": false,
//                    "vote_average": 5.1,
//                    "vote_count": 14
//                },
//                {
//                    "adult": false,
//                    "backdrop_path": "/b1Ii6xZ5b0ttWlSYA8YOWDsTydy.jpg",
//                    "genre_ids": [
//                        12
//                    ],
//                    "id": 204222,
//                    "original_language": "fr",
//                    "original_title": "Les héros sont fatigués",
//                    "overview": "A good cast smooths over the rough spots of Les Heros sont Fatigues. The scene is the African republic of Liberia, which in this film proves to be a stopping-off point for a number of shady characters. Yves Montand plays a French ex-pilot who becomes involved in a scheme to smuggle stolen diamonds. His cohorts include a Nazi collaborator, a German refugee, and the white mistress of a prominent Liberian. A romance develops between the ex-pilot and the aforementioned mistress. Meanwhile, one of the conspirators (Curt Jurgens) has a last-minute attack of conscience, effectively queering the deal. The steamier romantic passages in Les Heros sont Fatigues had to be trimmed for American consumption.",
//                    "popularity": 0.7186,
//                    "poster_path": "/zPU3sjSN5c2xbKfdyLHOL7yWcbk.jpg",
//                    "release_date": "1955-09-12",
//                    "title": "Heroes and Sinners",
//                    "video": false,
//                    "vote_average": 8.3,
//                    "vote_count": 6
//                }
//            ],
//            "total_pages": 8,
//            "total_results": 150
//        }
//        """
//        
//        guard let data = jsonString.data(using: .utf8) else {
//            completion(.failure(APIError.failedTogetData))
//            return
//        }
//
//        do {
//            let decodedResponse = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
//            completion(.success(decodedResponse.results))
//        } catch {
//            completion(.failure(error))
//        }
//    }
//    func getMovie(with query: String, completion: @escaping (Result<VideoElement, Error>) -> Void) {
//        
//
//        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else {return}
//        guard let url = URL(string: "\(Constants.YoutubeBaseURL)q=\(query)&key=\(Constants.YoutubeAPI_KEY)") else {return}
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//            
//            do {
//                let results = try JSONDecoder().decode(YoutubeSearchResponse.self, from: data)
//                
//                completion(.success(results.items[0]))
//                
//
//            } catch {
//                completion(.failure(error))
//                print(error.localizedDescription)
//            }
//
//        }
//        task.resume()
//    }
//
    func getMovie(with query: String, completion: @escaping (Result<VideoElement, Error>) -> Void) {
        let jsonString = """
            {
                "kind": "youtube#searchListResponse",
                "etag": "OP0yc97oLO3Lq_nZaCMrtazmqCk",
                "nextPageToken": "CAUQAA",
                "regionCode": "VN",
                "pageInfo": {
                    "totalResults": 1000000,
                    "resultsPerPage": 5
                },
                "items": [
                    {
                        "kind": "youtube#searchResult",
                        "etag": "utp44Mx8GwhmiZ2fzN4HmpqKnH4",
                        "id": {
                            "kind": "youtube#video",
                            "videoId": "8NXTgEw05Tk"
                        }
                    },
                    {
                        "kind": "youtube#searchResult",
                        "etag": "LyG42C0LKLWclKtU5Iq8eQOUR3Y",
                        "id": {
                            "kind": "youtube#video",
                            "videoId": "IN7nAyeeN5Q"
                        }
                    },
                    {
                        "kind": "youtube#searchResult",
                        "etag": "yMaEpq6xUoh5G6yC37DtKe4WMmY",
                        "id": {
                            "kind": "youtube#video",
                            "videoId": "MPxtqx55PA0"
                        }
                    },
                    {
                        "kind": "youtube#searchResult",
                        "etag": "sagryogocHbllXUUNm1dcs023Po",
                        "id": {
                            "kind": "youtube#video",
                            "videoId": "tEkC6InjWQ8"
                        }
                    },
                    {
                        "kind": "youtube#searchResult",
                        "etag": "2OPoFro8tthv6zqWXpjQpvSOWOs",
                        "id": {
                            "kind": "youtube#video",
                            "videoId": "9vIsQ25Krq8"
                        }
                    }
                ]
            }
        """

        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedTogetData))
            return
        }

        do {
            let decodedResponse = try JSONDecoder().decode(YoutubeSearchResponse.self, from: data)
            completion(.success(decodedResponse.items[0]))
        } catch {
            completion(.failure(error))
        }
    }


    
}





