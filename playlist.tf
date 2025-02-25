resource "spotify_playlist" "bollywood" {
  name = "My Fav Playlist"
  tracks = ["131yybV7A3TmC34a0qE8u8"]
}

data "spotify_search_track" "searchdata" {
  name = "Eminem"
}

resource "spotify_playlist" "name" {
  name = "Slim Shady"
  tracks = [data.spotify_search_track.searchdata.tracks[0].id,
  data.spotify_search_track.searchdata.tracks[1].id,data.spotify_search_track.searchdata.tracks[2].id]
}