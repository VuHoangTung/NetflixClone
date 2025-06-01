//
//  APICaller.swift
//  Netflix Clone
//
//  Created by Vũ Hoàng Tùng on 31/5/25.
//

import Foundation

struct Constants {
    static let API_KEY = "697d439ac993538da4e3e60b54e762cd"
    static let baseURL = "https://api.themoviedb.org"
}

struct TrendingResponse: Codable {
    let page: Int
    let results: [TrendingTitle]
    let total_pages: Int
    let total_results: Int
}

struct TrendingTitle: Codable {
    let id: Int
    let media_type: String
    let title: String?
    let name: String?
    let original_title: String?
    let original_name: String?
    let overview: String
    let poster_path: String?
    let backdrop_path: String?
    let release_date: String?
    let first_air_date: String?
    let vote_average: Double
}

struct Title: Codable {
    let backdrop_path: String?
    let id: Int
    let name: String?
    let original_name: String?
    let overview: String
    let poster_path: String?
    let media_type: String?
    let adult: Bool
    let original_language: String
    let genre_ids: [Int]
    let popularity: Double
    let first_air_date: String?
    let vote_average: Double
    let vote_count: Int
    let origin_country: [String]
}

struct UpcomingMoviesResponse: Decodable {
    let page: Int
    let results: [UpcomingMovie]
    let total_pages: Int
    let total_results: Int
}

struct UpcomingMovie: Decodable {
    let id: Int
    let title: String
    let original_title: String
    let overview: String
    let poster_path: String
    let backdrop_path: String
    let release_date: String
    let popularity: Double
    let vote_average: Double
    let vote_count: Int
    let adult: Bool
}


struct TrendingMovie: Decodable {
    let adult: Bool
    let backdropPath: String?
    let genreIds: [Int]
    let id: Int
    let originalLanguage: String
    let originalTitle: String
    let overview: String
    let popularity: Double
    let posterPath: String?
    let releaseDate: String
    let title: String
    let video: Bool
    let voteAverage: Double
    let voteCount: Int

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case genreIds = "genre_ids"
        case id
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}



enum APIError: LocalizedError {
    case invalidURL
    case failedToGetData
    case decodingError
    case requestFailed
    case unknown(Error)
    
    
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "⚠️ Invalid URL."
        case .failedToGetData:
            return "❌ No data received."
        case .decodingError:
            return "🧩 Failed to decode JSON."
        case .requestFailed:
            return "🧩 Failed to request JSON."
        case .unknown(let error):
            return "🚨 Unknown error: \(error.localizedDescription)"
        }
    }
}

struct TrendingTitleResponse: Codable {
    let page: Int
    let results: [Title]
    let totalPages: Int?
    let totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}




class APICaller {
    static let shared = APICaller()
    
    

    
    func getTrendingMovies(completion: @escaping (Result<TrendingResponse, Error>) -> Void) {
        let jsonString = """
        {
          "page": 1,
          "results": [
            {
              "adult": false,
              "backdrop_path": "/9PqD3wSIjntyJDBzMNuxuKHwpUD.jpg",
              "id": 1111873,
              "title": "Boy Kills World",
              "original_language": "en",
              "original_title": "Boy Kills World",
              "overview": "When his family is murdered...",
              "poster_path": "/26yQPXymbWeCLKwcmyL3wR4d7bS.jpg",
              "media_type": "movie",
              "genre_ids": [28, 53],
              "popularity": 1093.68,
              "release_date": "2024-04-25",
              "video": false,
              "vote_average": 6.9,
              "vote_count": 197
            },
            {
              "adult": false,
              "backdrop_path": "/cK9bYshH0jCxp4dw8I66RUBXs7T.jpg",
              "id": 273477,
              "name": "Bridgerton",
              "original_language": "en",
              "original_name": "Bridgerton",
              "overview": "Wealth, lust, and betrayal...",
              "poster_path": "/3O2eBO3dlY3zM9C0eYd0tWpcLmn.jpg",
              "media_type": "tv",
              "genre_ids": [18],
              "popularity": 853.585,
              "first_air_date": "2020-12-25",
              "vote_average": 8.2,
              "vote_count": 2581,
              "origin_country": ["US"]
            },
        {
                    "backdrop_path": "/jfnFHHZSIPkHfKGjlWnWck2o5ou.jpg",
                    "id": 1165642,
                    "title": "Lost in Starlight",
                    "original_title": "이 별에 필요한",
                    "overview": "When an astronaut leaves Earth for Mars, the vast infinite space divides star-crossed lovers in this animated romance that crosses the cosmos.",
                    "poster_path": "/dXlUIfwejWa9YvugU9V773dUASY.jpg",
                    "media_type": "movie",
                    "adult": false,
                    "original_language": "ko",
                    "genre_ids": [
                        16,
                        10749,
                        878
                    ],
                    "popularity": 2.7139,
                    "release_date": "2025-05-30",
                    "video": false,
                    "vote_average": 0.0,
                    "vote_count": 0
                },
                {
                            "backdrop_path": "/uQ4lG7E7mlyKsGvbASftQ6Hu2IX.jpg",
                            "id": 100088,
                            "name": "The Last of Us",
                            "original_name": "The Last of Us",
                            "overview": "Twenty years after modern civilization has been destroyed, Joel, a hardened survivor, is hired to smuggle Ellie, a 14-year-old girl, out of an oppressive quarantine zone. What starts as a small job soon becomes a brutal, heartbreaking journey, as they both must traverse the United States and depend on each other for survival.",
                            "poster_path": "/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg",
                            "media_type": "tv",
                            "adult": false,
                            "original_language": "en",
                            "genre_ids": [
                                18
                            ],
                            "popularity": 343.9299,
                            "first_air_date": "2023-01-15",
                            "vote_average": 8.54,
                            "vote_count": 6084,
                            "origin_country": [
                                "US"
                            ]
                        },
                        {
                            "backdrop_path": "/9R3tyMeAEvY53Da6fVguBEVlfxE.jpg",
                            "id": 223911,
                            "name": "Renegade Immortal",
                            "original_name": "仙逆",
                            "overview": "It tells the story of Wang Lin, an ordinary young man in the countryside, who is moved by his heart and cultivates against immortality. His pursuit is not only for longevity, but also for getting rid of the ants behind it. He firmly believed in human beings and entered the path of cultivation with mediocre qualifications. After experiencing ups and downs, with his wise mind, he gradually reached the pinnacle and became famous in the cultivation world with his own strength.",
                            "poster_path": "/fyBg1g4C596rtu7sitzmtb1QsYB.jpg",
                            "media_type": "tv",
                            "adult": false,
                            "original_language": "zh",
                            "genre_ids": [
                                10759,
                                16,
                                18,
                                10765
                            ],
                            "popularity": 37.2661,
                            "first_air_date": "2023-09-25",
                            "vote_average": 9.6,
                            "vote_count": 14,
                            "origin_country": [
                                "CN"
                            ]
                        },
          ],
          "total_pages": 1000,
          "total_results": 20000
        }
        """
        
        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.failedToGetData))
            return
        }
        
        do {
            let result = try JSONDecoder().decode(TrendingResponse.self, from: data)
            completion(.success(result))
        } catch {
            completion(.failure(APIError.decodingError))
        }
    }
    
    
    func getMockTrendingTVShows(completion: @escaping (Result<[Title], Error>) -> Void) {
        let jsonString = """
        {
          "page": 1,
          "results": [
            {
              "backdrop_path": "/wIoxMHbyUJnx5Fm9tI26hIYGI1D.jpg",
              "id": 245703,
              "name": "Dept. Q",
              "original_name": "Dept. Q",
              "overview": "A brash but brilliant cop becomes head of a new police department...",
              "poster_path": "/zOaltlzjjWgtj6vBQiBhNi9wRlo.jpg",
              "media_type": "tv",
              "adult": false,
              "original_language": "en",
              "genre_ids": [80, 18, 9648],
              "popularity": 56.9819,
              "first_air_date": "2025-05-29",
              "vote_average": 7.929,
              "vote_count": 14,
              "origin_country": ["GB"]
            },
            {
              "backdrop_path": "/uQ4lG7E7mlyKsGvbASftQ6Hu2IX.jpg",
              "id": 100088,
              "name": "The Last of Us",
              "original_name": "The Last of Us",
              "overview": "Twenty years after modern civilization has been destroyed...",
              "poster_path": "/dmo6TYuuJgaYinXBPjrgG9mB5od.jpg",
              "media_type": "tv",
              "adult": false,
              "original_language": "en",
              "genre_ids": [18],
              "popularity": 327.7323,
              "first_air_date": "2023-01-15",
              "vote_average": 8.5,
              "vote_count": 6097,
              "origin_country": ["US"]
            },
        {
                    "backdrop_path": "/nn9vM29SKN227zupaOOmaJz5SA0.jpg",
                    "id": 241554,
                    "name": "Murderbot",
                    "original_name": "Murderbot",
                    "overview": "In a high-tech future, a rogue security robot secretly gains free will. To stay hidden, it reluctantly joins a new mission protecting scientists on a dangerous planet...even though it just wants to binge soap operas.",
                    "poster_path": "/mIKfKo2uDk3itzAPYIcSeYr4KtF.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "en",
                    "genre_ids": [
                        35,
                        18,
                        10765
                    ],
                    "popularity": 120.3549,
                    "first_air_date": "2025-05-15",
                    "vote_average": 7.227,
                    "vote_count": 75,
                    "origin_country": [
                        "US"
                    ]
                },
                {
                    "backdrop_path": "/sHvTsXSWxuW7hoXAqWM4lBLJI50.jpg",
                    "id": 116450,
                    "name": "And Just Like That…",
                    "original_name": "And Just Like That…",
                    "overview": "This new chapter of “Sex and the City” follows Carrie, Miranda and Charlotte as they navigate the journey from the complicated reality of life and friendship in their 30s to the even more complicated reality of life and friendship in their 50s.",
                    "poster_path": "/2b6E0pN19IGsmxSv6HyTKydKKdb.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "en",
                    "genre_ids": [
                        35,
                        18
                    ],
                    "popularity": 28.5599,
                    "first_air_date": "2021-12-09",
                    "vote_average": 7.4,
                    "vote_count": 500,
                    "origin_country": [
                        "US"
                    ]
                },
        {
                    "backdrop_path": "/9R3tyMeAEvY53Da6fVguBEVlfxE.jpg",
                    "id": 223911,
                    "name": "Renegade Immortal",
                    "original_name": "仙逆",
                    "overview": "It tells the story of Wang Lin, an ordinary young man in the countryside, who is moved by his heart and cultivates against immortality. His pursuit is not only for longevity, but also for getting rid of the ants behind it. He firmly believed in human beings and entered the path of cultivation with mediocre qualifications. After experiencing ups and downs, with his wise mind, he gradually reached the pinnacle and became famous in the cultivation world with his own strength.",
                    "poster_path": "/fyBg1g4C596rtu7sitzmtb1QsYB.jpg",
                    "media_type": "tv",
                    "adult": false,
                    "original_language": "zh",
                    "genre_ids": [
                        10759,
                        16,
                        18,
                        10765
                    ],
                    "popularity": 85.4114,
                    "first_air_date": "2023-09-25",
                    "vote_average": 9.6,
                    "vote_count": 15,
                    "origin_country": [
                        "CN"
                    ]
                },
          ],
          "total_pages": 1000,
          "total_results": 20000
        }
        """

        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(APIError.requestFailed))
            return
        }

        do {
            let response = try JSONDecoder().decode(TrendingTitleResponse.self, from: data)
            completion(.success(response.results))
        } catch {
            completion(.failure(APIError.decodingError))
        }
    }
    
    
    func getMockUpcomingMovies(completion: @escaping (Result<UpcomingMoviesResponse, Error>) -> Void) {
        let jsonString = """
        {
          "page": 1,
          "results": [
            {
              "id": 634649,
              "title": "Spider-Man: No Way Home",
              "original_title": "Spider-Man: No Way Home",
              "overview": "Peter Parker is unmasked...",
              "poster_path": "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
              "backdrop_path": "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
              "release_date": "2025-12-17",
              "popularity": 1500.5,
              "vote_average": 8.4,
              "vote_count": 14000,
              "adult": false
            },
            {
              "id": 508947,
              "title": "Turning Red",
              "original_title": "Turning Red",
              "overview": "Thirteen-year-old Mei Lee is...",
              "poster_path": "/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg",
              "backdrop_path": "/x7qVh3sDxjJ5U9QfX7kSrt8Ag8g.jpg",
              "release_date": "2025-03-11",
              "popularity": 1230.7,
              "vote_average": 7.5,
              "vote_count": 4300,
              "adult": false
            },
                    {
                      "id": 508947,
                      "title": "Turning Red",
                      "original_title": "Turning Red",
                      "overview": "Thirteen-year-old Mei Lee is...",
                      "poster_path": "/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg",
                      "backdrop_path": "/x7qVh3sDxjJ5U9QfX7kSrt8Ag8g.jpg",
                      "release_date": "2025-03-11",
                      "popularity": 1230.7,
                      "vote_average": 7.5,
                      "vote_count": 4300,
                      "adult": false
                    },
                    {
                      "id": 508947,
                      "title": "Turning Red",
                      "original_title": "Turning Red",
                      "overview": "Thirteen-year-old Mei Lee is...",
                      "poster_path": "/qsdjk9oAKSQMWs0Vt5Pyfh6O4GZ.jpg",
                      "backdrop_path": "/x7qVh3sDxjJ5U9QfX7kSrt8Ag8g.jpg",
                      "release_date": "2025-03-11",
                      "popularity": 1230.7,
                      "vote_average": 7.5,
                      "vote_count": 4300,
                      "adult": false
                    }
          ],
          "total_pages": 10,
          "total_results": 200
        }
        """

        guard let data = jsonString.data(using: .utf8) else {
            completion(.failure(NSError(domain: "DataConversion", code: 0, userInfo: [NSLocalizedDescriptionKey: "Failed to convert jsonString to Data"])))
            return
        }

        do {
            let response = try JSONDecoder().decode(UpcomingMoviesResponse.self, from: data)
            completion(.success(response))
        } catch {
            completion(.failure(error))
        }
    }





}
