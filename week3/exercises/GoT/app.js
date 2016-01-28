var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
  else{
    var episodes = JSON.parse(file);
    sorted_array=sortedEpisodes(episodes);
    episodePrinter (sorted_array);
}
}
function episodePrinter (episode_array) {
   
    for (var i = 0; i < episode_array.length ; i++) {
      var x = episode_array[i].rating
      if (x > 8.5) {
      console.log("Title: " + episode_array[i].title + " Number: " + episode_array[i].episode_number );
      console.log(episode_array[i].description);
      console.log("Rating: " + episode_array[i].rating + starAdd(episode_array[i].rating))
      }
    else {
      console.log("Rating is less than 8.5")
    }
  }
}

 function sortedEpisodes(episode_array) {
  return episode_array.sort(function(a, b){
        return a.episode_number-b.episode_number
        });
}

function starAdd (number) {
   var stars = " "
   for (var rate = 0; rate < number; rate++) {
       stars += "*"
    }
    return stars
}





fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);








