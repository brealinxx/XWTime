//
//  AppDelegate.swift
//  XWTime
//
//  Created by brealin on 2023/12/12.
//

import Foundation
import OAuthSwift





class XServer{
    static let shared = XServer()
    
    let oauth = OAuthSwiftClient(consumerKey: apiKey, consumerSecret: apiKeySecret, oauthToken: accessToken, oauthTokenSecret:
                                    accessTokenSecret,version: .oauth1)
    let baseURL = "https://api.twitter.com/2/tweets"
    
    private init(){}
    
    func GenerateTweet(for tweet: String, completion:@escaping (Bool)->Void ) {
            let tweetData = [
                "text": tweet
            ]

            guard let jsonData = try? JSONSerialization.data(withJSONObject: tweetData, options: []) else {
                completion(false)
                return
            }

            let headers = ["Authorization": "Bearer \(apiKey)", "Content-Type": "application/json"]

            oauth.post(baseURL,headers: headers ,body: jsonData) { result in
                switch result {
                case .success(let response):
                    print(response)
                    completion(true)
                case .failure(let error):
                    print(error.localizedDescription)
                    completion(false)
                }
            }
        }
    
    func URLEncodeString(for string:String) -> String {
        var allowCharacterSet : CharacterSet = .urlQueryAllowed
        allowCharacterSet.remove(charactersIn: "\n:#/?@IS&'()*+, i=*")
        return string.addingPercentEncoding(withAllowedCharacters: allowCharacterSet) ?? string
    }
}

