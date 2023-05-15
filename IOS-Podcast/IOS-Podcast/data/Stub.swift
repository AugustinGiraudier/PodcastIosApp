//
//  Stub.swift
//  IOS-Podcast
//
//  Created by etudiant on 15/05/2023.
//

import Foundation


public struct Stub{
    
    
    private static let podcasts = [
        
        // --------------------------------
        Podcast(
            imageName: "podcast1",
            title: "L'Hippocampe",
            mark: "4.9 (259)",
            category: "Humour · Tous les jours",
            author: "Fabien Olicard",
            episodes: [
                Episode(
                    day:"1 Juillet 2022",
                    summary:"Comprendre leur fonctionnement (avant, pendant... et même après).",
                    duration: "28 min",
                    title: "EP#89 - Les pervers narcissiques ?"),
                Episode(
                    day:"28 Juin 2022",
                    summary:"L'histoire d'un trésor qui n'en serait pas un...Le podcast est diffusé à 12h00 tous les mardis sur toutes les plateformes.",
                    duration: "28 min",
                    title: "EP#88 - Trésor ou Escroquerie ? (H.S)"),
            ]
        ),
        // --------------------------------
        Podcast(
            imageName: "podcast2",
            title: "Chaleur Humaine",
            mark: "4.8 (464)",
            category: "Actualité · Tous les jours",
            author: "Le Monde",
            episodes: [
                Episode(
                    day:"9 Mai 2023",
                    summary:"En 2023, 38 millions de voitures sont en circulation en France : à elle seule, la voiture pèse 16 % de nos émissions de gaz à effet de serre. ",
                    duration: "49 min",
                    title: "Comment se libérer de la voiture individuelle ?"),
                Episode(
                    day:"25 Avril 2023",
                    summary:"Pour atteindre la neutralité carbone en 2050, renoncer au pétrole, au gaz et au charbon, il va falloir transformer aussi bien nos modèles que nos habitudes.",
                    duration: "1h 4 min",
                    title: "Gestes individuels et actions collectives : comment agir pour le climat ?"),
            ]
        ),
        // --------------------------------
        Podcast(
            imageName: "podcast3",
            title: "Les Pieds sur terre",
            mark: "4.7 (5 K)",
            category: "Culture et société",
            author: "France Culture",
            episodes: [
                Episode(
                    day:"Aujourd'hui",
                    summary:"Les Pieds sur terre - par : Sonia Kronlund - Le 27 octobre 2015, 51 réfugiés soudanais venus de Calais ont été accueillis sur décision préfectorale à Arry (540 habitants), en Moselle.",
                    duration: "27 min",
                    title: "Arry dans tous ses états"),
                Episode(
                    day:"Hier",
                    summary:"Les Pieds sur terre - par : Sonia Kronlund - Aux misères, doutes et autres blocages sexuels des patients, cette sexologue d'un l’hôpital parisien, propose des réponses concrètes et directes.",
                    duration: "27 min",
                    title: "Les consultations de sexologie à l'hôpital"),
            ]
        ),
        // --------------------------------
        Podcast(
            imageName: "podcast4",
            title: "Immersions : les grands reportages de RTL",
            mark: "3.9 (62)",
            category: "Actualités",
            author: "RTL",
            episodes: [
                Episode(
                    day:"Dimanche",
                    summary:"REPORTAGE - Dans \"Immersions\", Valentin Boissais nous emmène à la rencontre des manifestants de Rennes, qui a été le théâtre de nombreux heurts depuis le début du mouvement contre la réforme des retraites.",
                    duration: "10 min",
                    title: "RÉFORME DES RETRAITES - Pourquoi Rennes est l'un des épicentres de la contestation"),
                Episode(
                    day:"10 mai 2023",
                    summary:"REPORTAGE - Bruce Springsteen, le \"Boss\", c'est sa passion. Une passion excessive, violente, exclusive. Magali est \"la plus grande française\" du musicien américain, assurent ses amis et ses proches.",
                    duration: "11 min",
                    title: "BRUCE SPRINGSTEEN - Rencontre avec Magali, la \"plus grande fan française\" du \"Boss\""),
            ]
        ),
        // --------------------------------
        Podcast(
            imageName: "podcast5",
            title: "Code source",
            mark: "4.6 (1,2 K)",
            category: "Actualités",
            author: "Le Parisien",
            episodes: [
                Episode(
                    day:"Aujourd'hui",
                    summary:"Le samedi 13 mai, la chanteuse québécoise La Zarra est sur la scène de la M&S Bank Arena à Liverpool pour représenter la France lors du concours de l’Eurovision 2023. Dans la soirée, les résultats tombent : la Suède s’impose loin devant la France qui pointe à la 16e place, sur 26 pays finalistes. Mais surtout, un geste controversé fait polémique.",
                    duration: "25 min",
                    title: "La Zarra : un Eurovision sous haute tension"),
                Episode(
                    day:"12 mai 2023",
                    summary:"C’était il y a dix ans. Le 12 mai 2013, les différents journaux télévisés relaient la disparition inquiétante d’une petite fille de cinq ans, Fiona, dans un parc public de Clermont-Ferrand, dans le Puy-de-Dôme. Quelques jours plus tard, sa mère, Cécile Bourgeon, implore devant les caméras qu’on  « lui rende Fiona », alors que les premiers éléments de l’enquête laissent penser à un enlèvement. Mais après quatre mois d’investigation, Cécile Bourgeon et son compagnon, Berkane Maklouf, avouent en garde à vue que la fillette est morte et enterrée près d’un lac.",
                    duration: "23 min",
                    title: "Fiona, enfant martyre disparue il y a 10 ans : retour sur un drame qui a bouleversé le pays"),
            ]
        ),
        // --------------------------------
        Podcast(
            imageName: "podcast6",
            title: "La Story",
            mark: "4.3 (1,1 K)",
            category: "Actualités",
            author: "Les Echos",
            episodes: [
                Episode(
                    day:"Aujourd'hui",
                    summary:"Les vêtements chauds Thermolactyl se sont arrachés en cet hiver de crise énergétique. Pour « La Story », le podcast d’actualité des « Echos », Pierrick Fay et Anaïs Moutot reviennent sur le parcours d’une marque septuagénaire qui a su innover et se diversifier.",
                    duration: "22 min",
                    title: "Damart s’offre un coup de jeune"),
                Episode(
                    day:"Hier",
                    summary:"La lutte contre les déperditions thermiques et la réduction de l’utilisation du gaz comme source d’énergie peuvent-elles réduire les émissions de gaz à effet de serre des entreprises ? Dans les Hauts-de-France, un des sites français du laboratoire britannique GSK s'est penché sur la question. On y a produit pas moins de 135 millions de doses de vaccin l’an dernier. À la pointe technologiquement, le site se veut aussi leader sur la question de la transition énergétique.",
                    duration: "27 min",
                    title: "HORS-SERIE EDF - Moins de consommation, moins d'émissions | 2/5 Mission Décarbonation"),
            ]
        ),
        // --------------------------------
        Podcast(
            imageName: "podcast7",
            title: "La Loupe",
            mark: "4.8 (248)",
            category: "Actualités",
            author: "L'Express",
            episodes: [
                Episode(
                    day:"Aujourd'hui",
                    summary:"Pas besoin de vous le présenter, il est l’un des hommes les plus connus de la planète, qu’il aspire d’ailleurs à quitter pour Mars. Mais connaissons-nous vraiment Elon Musk ? Comment le petit garçon réservé de Pretoria est-il devenu ce gourou technophile et milliardaire qui fascine autant qu’il agace ? La Loupe vous invite à entrer dans la tête d’Elon pour comprendre Musk, grâce à un double podcast. Dans ce premier épisode, Béatrice Mathieu, grand reporter à L’Express, et co-auteure du livre “Elon Musk” (éditions Robert Laffont), nous promène du Midwest du début du XXe siècle à l’Afrique du Sud de l’apartheid.",
                    duration: "24 min",
                    title: "Elon avant Musk (1/2)"),
                Episode(
                    day:"12 main 2023",
                    summary:"Chaque vendredi, l'équipe de La Loupe range dans son armoire la définition d'un concept dont vous entendez souvent parler dans l'actualité... Sans forcément en saisir tous les enjeux. Cette semaine, Charles Haquet, chef du service Monde de L’Express, détaille la notion de Sud global, très utilisée depuis le début de la guerre en Ukraine...",
                    duration: "5 min",
                    title: "Dans l'armoire : le Sud global"),
            ]
        ),
        
    ]
    
    
    
    
    
    
    
    
    
    
    public static func getAllPodcasts() -> [Podcast]{
        return podcasts
    }
    public static func getOnePodcast() -> Podcast{
        return podcasts[0]
    }
    public static func getManyEpisodes() -> [Episode]{
        return podcasts[0].episodes
    }
    public static func getOnEpisode() -> Episode{
        return podcasts[0].episodes[0]
    }
    
}
