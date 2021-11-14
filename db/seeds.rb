# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# months = Month.create([
#     {name: "January"},
#     {name: "February"},
#     {name: "March"},
#     {name: "April"},
#     {name: "May"},
#     {name: "June"},
#     {name: "July"},
#     {name: "August"},
#     {name: "September"},
#     {name: "October"},
#     {name: "November"},
#     {name: "December"}
# ])

# events = Event.create([
#     {
#         name: "Enchanted: Forest of Light",
#         date: Date.new(2021, 11, 21),
#         location: "https://www.google.com/maps/place/Descanso+Gardens/@34.2014185,-118.2133945,17z/data=!3m1!4b1!4m5!3m4!1s0x80c2ea072bb4dcc7:0x20f229a95316ebe7!8m2!3d34.2014185!4d-118.2112005",
#         description: "The botanical garden’s nighttime experience masterfully mixes hands-on art installations with atmospheric, luminescent forests, all against a background of uplit trees and shimmery sound effects.",
#         website: "https://www.descansogardens.org/programs-events/enchanted/",
#         month_id: Month.all[10].id,
#         user_id: User.first.id
#     },
#     {
#         name: "L.A. Zoo Lights",
#         date: Date.new(2021, 11, 19),
#         location: "https://www.google.com/maps/place/Los+Angeles+Zoo/@34.1483481,-118.2862839,17z/data=!3m1!4b1!4m5!3m4!1s0x80c2c0659751c7d5:0x3641cb15292865fd!8m2!3d34.1483481!4d-118.2840899",
#         description: "The L.A. Zoo is staying open after dark every night through January. Lighting displays are inspired by the zoo’s wild residents: think elephant statues with whimsical projections, mosaic-like multicolor giraffes and twinkling butterflies.",
#         website: "https://www.lazoo.org/plan-your-visit/special-experiences/zoolights/",
#         month_id: Month.all[10].id,
#         user_id: User.first.id
#     },
#     {
#         name: "The Nutcracker",
#         date: Date.new(2021, 12, 5),
#         location: "https://www.google.com/maps/place/La+Mirada+Theatre+for+the+Performing+Arts/@33.8969344,-118.0120871,17z/data=!3m2!4b1!5s0x80dd2b665892db57:0xc16a8d8aec88a0d3!4m5!3m4!1s0x80dd2b66591c917b:0xdb786ead0170f50a!8m2!3d33.896908!4d-118.009892",
#         description: "Santa Barbara's State Street Ballet stage their gloriously enjoyable production of The Nutcracker.  A story of a magical journey into the world of one young girl and her enchanted Christmas gift.",
#         website: "https://ticketing.granadasb.org/16031",
#         month_id: Month.all[11].id,
#         user_id: User.last.id
#     },
#     {
#         name: "L.A. Auto Show",
#         date: Date.new(2021, 11, 20),
#         location: "https://www.google.com/maps/place/Los+Angeles+Convention+Center/@34.0403207,-118.2717564,17z/data=!3m1!4b1!4m5!3m4!1s0x80c2c7c76a01ef3d:0xf629c020e23429b5!8m2!3d34.0403207!4d-118.2695624",
#         description: "See 1000 new vehicles, test drive nearly 100 models, and admire customized and exotic cars. Kids under 6 are free with paying adults.",
#         website: "https://laautoshow.com/",
#         month_id: Month.all[10].id,
#         user_id: User.first.id
#     },
#     {
#         name: "Caribou",
#         date: Date.new(2021, 11, 15),
#         location: "https://www.google.com/maps/place/The+Greek+Theatre/@34.1195315,-118.2984836,17z/data=!3m1!4b1!4m5!3m4!1s0x80c2c098a47d4245:0x3b9f3214123aa486!8m2!3d34.1195315!4d-118.2962896",
#         description: "Canadian producer Dan Snaith has always been interested in the intersection between electronic music and rock, finding ways to bring his synth-dappled tracks to life onstage with the help of other performers—and then taking that energy back into the studio.",
#         website: "https://www.lagreektheatre.com/events/detail/caribou",
#         month_id: Month.all[10].id,
#         user_id: User.first.id
#     }
# ])

# users = User.create([
#     {
#         username: "jasmine1",
#         password: "password"
#     },
#     {
#         username: "jasmine2",
#         password: "password"
#     }
# ])

# Date.new(2007, 5, 1) => Tue, 01 May 2007
# Date.new(2007, 11, 10).to_formatted_s(:long) => "November 10, 2007" 