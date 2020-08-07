//
//  MusicModelView.swift
//  MusicLibrary
//
//  Created by Vishal on 8/5/20.
//  Copyright © 2020 Andes Infotech. All rights reserved.
//

import Foundation
import Combine

class MusicListViewModel: ObservableObject {
    
    @Published var musiclist : [Music]
    
    init() {
        let music1 = Music(title: "Caught Up in You", description: "Caught Up in You is the first single released from Southern rock band 38 Special's 1982 album, Special Forces. It became the band's first number-one single on the Billboard Top Tracks rock chart. It also became one of the band's two top ten pop hits, reaching number ten on the Billboard Hot 100.", artist: ".38 Special", release: 1982, imageName: "image1")
        
        let music2 = Music(title: "Art For Arts Sake", description: "Art for art's sake is the usual English rendering of a French slogan from the early 19th century, l'art pour l'art, and expresses a philosophy that the intrinsic value of art, and the only true art, is divorced from any didactic, moral, politic, or utilitarian function.", artist: "10cc", release: 1975, imageName: "image2")
        
        let music3 = Music(title: "Kryptonite", description: "Kryptonite is the debut single by American rock band 3 Doors Down. It was originally released as a demo for local play by 97.9 WCPR-FM in Biloxi, Mississippi.", artist: "3 Doors Down", release: 2000, imageName: "image3")
        
        let music4 = Music(title: "Take On Me", description: "Take On Me is a song by Norwegian synth-pop band A-ha, first released in 1984. The original version was produced by Tony Mansfield and remixed by John Ratcliff. A new version was released in 1985 and produced by Alan Tarney for the group's debut studio album Hunting High and Low.", artist: "a-ha", release: 1985, imageName: "image4")
        
        let music5 = Music(title: "Baby, Please Don't Go", description: "Baby, Please Don't Go is a traditional blues song that was popularized by Delta blues musician Big Joe Williams in 1935. Many cover versions followed, and the song has been described by French music historian Gérard Herzhaft as one of the most played, arranged, and rearranged pieces in blues history", artist: "AC/DC", release: 1980, imageName: "image5")
        
        let music6 = Music(title: "How Long", description: "How Long is a song recorded and produced by American singer Charlie Puth. He co-wrote the song with Jacob Kasher and DJ Frank E. It was released on October 5, 2017, by Atlantic Records as the second single from Puth's second studio album, Voicenotes", artist: "Ace", release: 1974, imageName: "image6")
        
        let music7 = Music(title: "Dog On A Leash", description: "Dog on a Leash is a song from the American hard rock band Adelitas Way, released on April 8, 2014. It is the first single from their third studio album, Stuck and reached No. 7 on the U.S. Active Rock chart.", artist: "Adelitas Way", release: 2014, imageName: "image7")
        
        let music8 = Music(title: "Angel", description: "Angel is a song by Canadian singer-songwriter Sarah McLachlan. The song first appeared on Surfacing, the Canadian singer's 1997 album. The lyrics are about the death of Jonathan Melvoin, the Smashing Pumpkins' touring keyboard player, from a heroin overdose, as McLachlan explained on VH1 Storytellers.", artist: "Aerosmith", release: 1987, imageName: "image8")
        
        let music9 = Music(title: "Hand In My Pocket", description: "Hand in My Pocket is a rock song by Canadian recording artist and songwriter Alanis Morissette, for her third studio album, Jagged Little Pill. The song was written by Morissette and Glen Ballard, and was released as the second single from the album.", artist: "Alanis Morissette", release: 1995, imageName: "image9")
        
        let music10 = Music(title: "Black Velvet", description: "Black Velvet is a song written by Canadian songwriters Christopher Ward and David Tyson, recorded by Canadian singer-songwriter Alannah Myles. It was released in December 1989 as one of four singles from Myles' 1989 eponymous album from Atlantic Records.", artist: "Alannah Myles", release: 1989, imageName: "image10")
        
        let music11 = Music(title: "Fantasy", description: "Fantasy is the debut single by Canadian rock musician Aldo Nova and is his most popular work to date. Released on his eponymous debut album in 1982, the song climbed to #3 on the Mainstream Rock chart, and #23 on the Billboard Hot 100 singles chart.", artist: "Aldo Nova", release: 1982, imageName: "image11")
        
        let music12 = Music(title: "Billion Dollar Babies", description: "Billion Dollar Babies is the sixth studio album by American rock band Alice Cooper, released in 1973.[1][2] The album became the best selling Alice Cooper record at the time of its release, hit number one on the album charts in both the United States and the United Kingdom, and went on to be certified platinum by the Recording Industry Association of America. The album has been retrospectively praised by such critics as Robert Christgau, Greg Prato of AllMusic, and Jason Thompson of PopMatters, but The Rolling Stone Album Guide (2004) gave the album only two and a half stars.", artist: "Alice Cooper", release: 1995, imageName: "image12")
        
        let music13 = Music(title: "Down in a Hole", description: "Down in a Hole is a power ballad by Alice in Chains, and the fifth and last single from their album Dirt. It is the twelfth song on most pressings of the album and fourth or eleventh on others. The song was written by guitarist and vocalist Jerry Cantrell for his then-girlfriend, Courtney Clarke.", artist: "Alice In Chains", release: 1992, imageName: "image13")
        
        let music14 = Music(title: "Ain't Wastin' Time No More", description: "Ain't Wastin' Time No More is a song by the American rock band the Allman Brothers Band. It was the lead single from their third studio album, Eat a Peach, released on Capricorn Records.", artist: "Allman Brothers Band", release: 1972, imageName: "image14")
        
        let music15 = Music(title: "A Horse With No Name", description: "A Horse with No Name is a song by the folk rock band America, written by Dewey Bunnell. It was the band's first and most successful single, released in late 1971 in Europe and early 1972 in the United States, and topped the charts in Canada, Finland, and the United States.", artist: "America", release: 1972, imageName: "image15")
        
        let music16 = Music(title: "Don't Bring Me Down", description: "Don't Bring Me Down is the ninth and final track on the English rock band the Electric Light Orchestra's 1979 album Discovery. It is their highest-charting hit in the United States to date.", artist: "Animals II", release: 1966, imageName: "image16")
        
        let music17 = Music(title: "Immigrant Song", description: "Immigrant Song is a song by the English rock band Led Zeppelin. It is built upon a repeating riff and features lyrical references to Norse mythology, with singer Robert Plant's howling vocals mentioning war-making and Valhalla. The song was included on their 1970 album, Led Zeppelin III and released as a single.", artist: "Ann Wilson", release: 1972, imageName: "image17")
        
        let music18 = Music(title: "Bad Company", description: "Bad Company are an English hard rock supergroup formed in England, in 1973 by singer Paul Rodgers, guitarist Mick Ralphs, drummer Simon Kirke and later adding bassist Boz Burrell. Peter Grant, who managed the rock band Led Zeppelin, also managed Bad Company until 1982.", artist: "Bad Company", release: 1974, imageName: "image18")
        
        let music19 = Music(title: "No Sleep Till Brooklyn", description: "No Sleep till Brooklyn is a song by the New York hip hop group the Beastie Boys, and the sixth single from their debut studio album Licensed to Ill.", artist: "Beastie Boys", release: 1986, imageName: "image19")
        
        let music20 = Music(title: "Loser", description: "Loser is a song by American musician Beck. It was written by Beck and record producer Carl Stephenson, who both produced the song with Tom Rothrock.", artist: "Beck", release: 1994, imageName: "image20")
        
        
        self.musiclist = [music1,music2,music3,music4,music5,music6,music7,music8,music9,music10,music11,music12,music13,music14,music15,music16,music17,music18,music19,music20]
    }
}
