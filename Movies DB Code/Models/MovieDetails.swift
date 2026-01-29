//
//  Movie.swift
//  Movies DB Code
//
//  Created by seshi on 1/29/26.
//

//MARK: Variable declaration in struct

struct MovieDetails {
    let title: String?
    let rating: Double?
    let releaseDate: String?
    let posterPath: String?
    let description: String?
}

//MARK: Enum declaration

enum MovieEnum: CaseIterable {

    case avengers
    case avatar
    case f1
    case annabelle
    case interstellar
    case darkKnight
    case infinityWar
    case endgame

    var details: MovieDetails {
        switch self {

        case .avengers:
            return MovieDetails(
                title: "Avengers",
                rating: 8.9,
                releaseDate: "April 2012",
                posterPath: "movieclapper.fill",
                description: "Earth’s mightiest heroes unite to stop Loki and an alien invasion threatening humanity. Iron Man, Captain America, Thor, Hulk, and others must learn to work together to save the world."
            )

        case .avatar:
            return MovieDetails(
                title: "Avatar",
                rating: 9.3,
                releaseDate: "December 2009",
                posterPath: "movieclapper",
                description: "A former Marine becomes torn between following orders and protecting an alien world called Pandora. The film explores themes of identity, nature, and conflict through groundbreaking visual effects."
            )

        case .f1:
            return MovieDetails(
                title: "F1 Movie",
                rating: 9.4,
                releaseDate: "May 2025",
                posterPath: "film",
                description: "A high-speed drama that dives into the intense world of Formula One racing. It showcases the passion, pressure, and rivalry faced by drivers chasing championship glory."
            )

        case .annabelle:
            return MovieDetails(
                title: "Annabelle",
                rating: 8.3,
                releaseDate: "June 2014",
                posterPath: "car",
                description: "A terrifying horror story centered around a possessed doll that brings evil into a family’s home. Dark supernatural forces begin to haunt their lives with deadly consequences."
            )

        case .interstellar:
            return MovieDetails(
                title: "Interstellar",
                rating: 9.4,
                releaseDate: "September 2014",
                posterPath: "person.fill",
                description: "A group of astronauts travels through a wormhole in search of a new home for humanity. The film blends science, emotion, and time to explore love, sacrifice, and survival."
            )

        case .darkKnight:
            return MovieDetails(
                title: "The Dark Knight",
                rating: 9.5,
                releaseDate: "July 2008",
                posterPath: "movieclapper.fill",
                description: "Batman faces his greatest psychological and moral challenge against the Joker. Chaos erupts in Gotham as the line between heroism and justice is pushed to its limits."
            )

        case .infinityWar:
            return MovieDetails(
                title: "Avengers: Infinity War",
                rating: 9.1,
                releaseDate: "March 2018",
                posterPath: "movieclapper.fill",
                description: "The Avengers and their allies battle Thanos, who seeks ultimate power using the Infinity Stones. The fate of the universe hangs in the balance as heroes face their most devastating loss."
            )

        case .endgame:
            return MovieDetails(
                title: "Avengers: Endgame",
                rating: 9.3,
                releaseDate: "April 2019",
                posterPath: "movieclapper.fill",
                description: "After a tragic defeat, the Avengers reunite for one final mission to restore what was lost. An emotional conclusion that celebrates sacrifice, teamwork, and heroism."
            )
        }
    }
}
