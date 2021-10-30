# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

months = Month.create([
    {name: "January"},
    {name: "February"},
    {name: "March"},
    {name: "April"},
    {name: "May"},
    {name: "June"},
    {name: "July"},
    {name: "August"},
    {name: "September"},
    {name: "October"},
    {name: "November"},
    {name: "December"}
])

events = Event.create([
    {
        name: "Enchanted: Forest of Light",
        date: Date.new(2021, 11, 21),
        location: "Descanso Gardens",
        description: "The botanical garden’s nighttime experience masterfully mixes hands-on art installations with atmospheric, luminescent forests, all against a background of uplit trees and shimmery sound effects."
    },
    {
        name: "L.A. Zoo Lights",
        date: Date.new(2021, 11, 19),
        location: "Los Angeles Zoo",
        description: "The L.A. Zoo is staying open after dark every night through January. Lighting displays are inspired by the zoo’s wild residents: think elephant statues with whimsical projections, mosaic-like multicolor giraffes and twinkling butterflies."
    },
    {
        name: "The Nutcracker",
        date: Date.new(2021, 12, 5),
        location: "La Mirada Theatre For The Performing Arts",
        description: "Santa Barbara's State Street Ballet stage their gloriously enjoyable production of The Nutcracker.  A story of a magical journey into the world of one young girl and her enchanted Christmas gift."
    },
    {
        name: "L.A. Auto Show",
        date: Date.new(2021, 11, 20),
        location: "Los Angeles Convention Center",
        description: "See 1000 new vehicles, test drive nearly 100 models, and admire customized and exotic cars. Kids under 6 are free with paying adults."
    },
    {
        name: "Caribou",
        date: Date.new(2021, 11, 15),
        location: "Greek Theatre",
        description: "Canadian producer Dan Snaith has always been interested in the intersection between electronic music and rock, finding ways to bring his synth-dappled tracks to life onstage with the help of other performers—and then taking that energy back into the studio."
    }
])


# Date.new(2007, 5, 1) => Tue, 01 May 2007
# Date.new(2007, 11, 10).to_formatted_s(:long) => "November 10, 2007" 