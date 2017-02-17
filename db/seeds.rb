# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Competition.create([
    {id: 1, Name:"Champions League", CanonicalName:"champions-league", Order:1},
    {id: 2, Name:"La Liga", CanonicalName:"la-liga",Order:2, }
])
Team.create([
    {id:1, Name:"Real Madrid", CanonicalName:"real-madrid"},
    {id:2, Name:"Barcelona", CanonicalName:"barcelona"},
    {id:3, Name:"Valencia", CanonicalName:"valencia"},
    {id:4, Name:"Leganes", CanonicalName:"leganes"},
    {id:5, Name:"Gijon", CanonicalName:"gijon"},
    {id:6, Name:"Villarreal", CanonicalName:"villarreal"},
    {id:7, Name:"Alaves", CanonicalName:"alaves"},
    {id:8, Name:"Osasuna", CanonicalName:"osasuna"},

])
Match.create([
    { id:1, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 6, AwayTeamId:3, CompetitionId: 2, Score:"1:2", CoverPicture:"/11977.jpg"},
    { id:2, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 4, AwayTeamId:5, CompetitionId: 2, Score:"1:2", CoverPicture:"/11986.jpg"},
    { id:3,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 7, AwayTeamId:2, CompetitionId: 2, Score:"1:2", CoverPicture:"/11969.jpg"},
    { id:4,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 8, AwayTeamId:1, CompetitionId: 2, Score:"1:2", CoverPicture:"/11975.jpg"},
    { id:5,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 7, AwayTeamId:2, CompetitionId: 2, Score:"1:2", CoverPicture:"/11969.jpg"},
    { id:6, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 4, AwayTeamId:5, CompetitionId: 2, Score:"1:2", CoverPicture:"/11986.jpg"},
    { id:7, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 6, AwayTeamId:3, CompetitionId: 2, Score:"1:2", CoverPicture:"/11977.jpg"},
    { id:8,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 8, AwayTeamId:1, CompetitionId: 2, Score:"1:2", CoverPicture:"/11975.jpg"},
    { id:9, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 6, AwayTeamId:3, CompetitionId: 2, Score:"1:2", CoverPicture:"/11977.jpg"},
    { id:10, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 4, AwayTeamId:5, CompetitionId: 2, Score:"1:2", CoverPicture:"/11986.jpg"},
    { id:11,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 7, AwayTeamId:2, CompetitionId: 2, Score:"1:2", CoverPicture:"/11969.jpg"},
    { id:12,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 8, AwayTeamId:1, CompetitionId: 2, Score:"1:2", CoverPicture:"/11975.jpg"},
    { id:13,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 7, AwayTeamId:2, CompetitionId: 2, Score:"1:2", CoverPicture:"/11969.jpg"},
    { id:14, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 4, AwayTeamId:5, CompetitionId: 2, Score:"1:2", CoverPicture:"/11986.jpg"},
    { id:15, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 6, AwayTeamId:3, CompetitionId: 2, Score:"1:2", CoverPicture:"/11977.jpg"},
    { id:16,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 8, AwayTeamId:1, CompetitionId: 2, Score:"1:2", CoverPicture:"/11975.jpg"},
    { id:17, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 6, AwayTeamId:3, CompetitionId: 2, Score:"1:2", CoverPicture:"/11977.jpg"},
    { id:18, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 4, AwayTeamId:5, CompetitionId: 2, Score:"1:2", CoverPicture:"/11986.jpg"},
    { id:19,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 7, AwayTeamId:2, CompetitionId: 2, Score:"1:2", CoverPicture:"/11969.jpg"},
    { id:20,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 8, AwayTeamId:1, CompetitionId: 2, Score:"1:2", CoverPicture:"/11975.jpg"},
    { id:21,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 7, AwayTeamId:2, CompetitionId: 2, Score:"1:2", CoverPicture:"/11969.jpg"},
    { id:22, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 4, AwayTeamId:5, CompetitionId: 2, Score:"1:2", CoverPicture:"/11986.jpg"},
    { id:23, DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 6, AwayTeamId:3, CompetitionId: 2, Score:"1:2", CoverPicture:"/11977.jpg"},
    { id:24,DatePlayed:DateTime.now, Status:"Played",  HomeTeamId: 8, AwayTeamId:1, CompetitionId: 2, Score:"1:2", CoverPicture:"/11975.jpg"},
])
