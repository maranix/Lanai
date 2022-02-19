import 'dart:convert';

final photoSearchResponse = jsonEncode({
  "page": 1,
  "per_page": 5,
  "photos": [
    {
      "id": 15286,
      "width": 2500,
      "height": 1667,
      "url":
          "https://www.pexels.com/photo/person-walking-between-green-forest-trees-15286/",
      "photographer": "Luis del Río",
      "photographer_url": "https://www.pexels.com/@luisdelrio",
      "photographer_id": 1081,
      "avg_color": "#283419",
      "src": {
        "original": "https://images.pexels.com/photos/15286/pexels-photo.jpg",
        "large2x":
            "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/15286/pexels-photo.jpg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Person Walking Between Green Forest Trees"
    },
    {
      "id": 3408744,
      "width": 3546,
      "height": 2255,
      "url":
          "https://www.pexels.com/photo/scenic-view-of-snow-capped-mountains-during-night-3408744/",
      "photographer": "stein egil liland",
      "photographer_url": "https://www.pexels.com/@therato",
      "photographer_id": 144244,
      "avg_color": "#557088",
      "src": {
        "original":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg",
        "large2x":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/3408744/pexels-photo-3408744.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Scenic View Of Snow Capped Mountains During Night"
    },
    {
      "id": 572897,
      "width": 6914,
      "height": 4463,
      "url":
          "https://www.pexels.com/photo/mountain-covered-snow-under-star-572897/",
      "photographer": "eberhard grossgasteiger",
      "photographer_url": "https://www.pexels.com/@eberhardgross",
      "photographer_id": 121938,
      "avg_color": "#5D5A63",
      "src": {
        "original":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg",
        "large2x":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Mountain Covered Snow Under Star"
    },
    {
      "id": 624015,
      "width": 4216,
      "height": 2848,
      "url": "https://www.pexels.com/photo/aurora-borealis-624015/",
      "photographer": "Frans Van Heerden",
      "photographer_url": "https://www.pexels.com/@frans-van-heerden-201846",
      "photographer_id": 201846,
      "avg_color": "#71839F",
      "src": {
        "original":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg",
        "large2x":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/624015/pexels-photo-624015.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Aurora Borealis"
    },
    {
      "id": 3244513,
      "width": 5121,
      "height": 3525,
      "url":
          "https://www.pexels.com/photo/brown-landscape-under-grey-sky-3244513/",
      "photographer": "Andy Vu",
      "photographer_url": "https://www.pexels.com/@andyhvu",
      "photographer_id": 1653971,
      "avg_color": "#473C36",
      "src": {
        "original":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg",
        "large2x":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/3244513/pexels-photo-3244513.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Brown Landscape Under Grey Sky"
    }
  ],
  "total_results": 8000,
  "next_page":
      "https://api.pexels.com/v1/search/?page=2\u0026per_page=5\u0026query=nature"
});

final curatedPhotoResponse = jsonEncode({
  "page": 1,
  "per_page": 5,
  "photos": [
    {
      "id": 9351585,
      "width": 3563,
      "height": 4454,
      "url":
          "https://www.pexels.com/photo/woman-in-gray-long-sleeve-shirt-and-blue-denim-jeans-riding-bicycle-9351585/",
      "photographer": "Henrique Morais",
      "photographer_url": "https://www.pexels.com/@henriquemorais",
      "photographer_id": 1906596,
      "avg_color": "#616445",
      "src": {
        "original":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg",
        "large2x":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/9351585/pexels-photo-9351585.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt":
          "Woman in Gray Long Sleeve Shirt and Blue Denim Jeans Riding Bicycle"
    },
    {
      "id": 11216549,
      "width": 2832,
      "height": 4256,
      "url":
          "https://www.pexels.com/photo/grayscale-photo-of-man-walking-on-hallway-11216549/",
      "photographer": "Anton",
      "photographer_url": "https://www.pexels.com/@anton-181978116",
      "photographer_id": 181978116,
      "avg_color": "#353535",
      "src": {
        "original":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg",
        "large2x":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/11216549/pexels-photo-11216549.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Grayscale Photo of Man Walking on Hallway"
    },
    {
      "id": 11210402,
      "width": 6944,
      "height": 8564,
      "url":
          "https://www.pexels.com/photo/grayscale-photo-of-white-flowers-11210402/",
      "photographer": "Louis Tran",
      "photographer_url": "https://www.pexels.com/@louis-tran-155871478",
      "photographer_id": 155871478,
      "avg_color": "#252525",
      "src": {
        "original":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg",
        "large2x":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/11210402/pexels-photo-11210402.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Grayscale Photo of White Flowers"
    },
    {
      "id": 11207765,
      "width": 2127,
      "height": 3312,
      "url":
          "https://www.pexels.com/photo/black-and-white-bird-on-gray-sand-11207765/",
      "photographer": "sofieke van Kooten",
      "photographer_url": "https://www.pexels.com/@sofieke",
      "photographer_id": 167689154,
      "avg_color": "#7E7F81",
      "src": {
        "original":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg",
        "large2x":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/11207765/pexels-photo-11207765.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Black and White Bird on Gray Sand"
    },
    {
      "id": 11198744,
      "width": 3194,
      "height": 3992,
      "url":
          "https://www.pexels.com/photo/woman-in-red-blazer-standing-11198744/",
      "photographer": "Lany-Jade Mondou",
      "photographer_url": "https://www.pexels.com/@lany",
      "photographer_id": 135943481,
      "avg_color": "#756158",
      "src": {
        "original":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg",
        "large2x":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/11198744/pexels-photo-11198744.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "alt": "Woman in Red Blazer Standing"
    }
  ],
  "total_results": 8000,
  "next_page": "https://api.pexels.com/v1/curated/?page=2\u0026per_page=5"
});

final featuredCollectionsResponse = jsonEncode({
  "page": 1,
  "per_page": 5,
  "collections": [
    {
      "id": "usy2j0g",
      "title": "Astrophotography",
      "description": "",
      "private": false,
      "media_count": 117,
      "photos_count": 117,
      "videos_count": 0
    },
    {
      "id": "9cwyxd2",
      "title": "Screensaver Videos",
      "description": "",
      "private": false,
      "media_count": 80,
      "photos_count": 0,
      "videos_count": 80
    },
    {
      "id": "pwil78x",
      "title": " St.David's Day",
      "description": "Dydd gwyl dewi hapus!",
      "private": false,
      "media_count": 17,
      "photos_count": 17,
      "videos_count": 0
    },
    {
      "id": "o9bnpjo",
      "title": "Roses",
      "description": "",
      "private": false,
      "media_count": 173,
      "photos_count": 146,
      "videos_count": 27
    },
    {
      "id": "fikw2ao",
      "title": "Green Nature Videos",
      "description": "",
      "private": false,
      "media_count": 82,
      "photos_count": 0,
      "videos_count": 82
    }
  ],
  "total_results": 640,
  "next_page":
      "https://api.pexels.com/v1/collections/featured/?page=2\u0026per_page=5"
});

final collectionMediaResponse = jsonEncode({
  "page": 1,
  "per_page": 5,
  "media": [
    {
      "type": "Photo",
      "id": 1567069,
      "width": 5472,
      "height": 3078,
      "url":
          "https://www.pexels.com/photo/silhouette-of-two-persons-stargazing-1567069/",
      "photographer": "Yuting Gao",
      "photographer_url": "https://www.pexels.com/@leofallflat",
      "photographer_id": 415347,
      "avg_color": "#3F3B40",
      "src": {
        "original":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg",
        "large2x":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/1567069/pexels-photo-1567069.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "liked": false,
      "alt": "Silhouette of Two Persons Stargazing "
    },
    {
      "type": "Photo",
      "id": 365633,
      "width": 2200,
      "height": 1467,
      "url":
          "https://www.pexels.com/photo/silhouette-photo-of-trees-during-night-time-365633/",
      "photographer": "Miriam Espacio",
      "photographer_url": "https://www.pexels.com/@miriamespacio",
      "photographer_id": 27692,
      "avg_color": "#1A223C",
      "src": {
        "original":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg",
        "large2x":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/365633/pexels-photo-365633.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "liked": false,
      "alt": "Silhouette Photo of Trees during Night Time"
    },
    {
      "type": "Photo",
      "id": 816608,
      "width": 4041,
      "height": 6324,
      "url": "https://www.pexels.com/photo/photo-of-deep-sky-object-816608/",
      "photographer": "Alex Andrews",
      "photographer_url": "https://www.pexels.com/@alex-andrews-271121",
      "photographer_id": 271121,
      "avg_color": "#181310",
      "src": {
        "original":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg",
        "large2x":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/816608/pexels-photo-816608.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "liked": false,
      "alt": "Photo of Deep-Sky Object"
    },
    {
      "type": "Photo",
      "id": 3934512,
      "width": 3648,
      "height": 5472,
      "url": "https://www.pexels.com/photo/scenic-view-of-night-sky-3934512/",
      "photographer": "Sam Willis",
      "photographer_url": "https://www.pexels.com/@sam-willis-457311",
      "photographer_id": 457311,
      "avg_color": "#2D628F",
      "src": {
        "original":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg",
        "large2x":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/3934512/pexels-photo-3934512.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "liked": false,
      "alt": "Scenic View Of Night Sky"
    },
    {
      "type": "Photo",
      "id": 2666598,
      "width": 6000,
      "height": 3376,
      "url":
          "https://www.pexels.com/photo/photo-of-teepee-under-a-starry-sky-2666598/",
      "photographer": "Chait Goli",
      "photographer_url": "https://www.pexels.com/@chaitaastic",
      "photographer_id": 876963,
      "avg_color": "#252F3B",
      "src": {
        "original":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg",
        "large2x":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=2\u0026h=650\u0026w=940",
        "large":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=650\u0026w=940",
        "medium":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=350",
        "small":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg?auto=compress\u0026cs=tinysrgb\u0026h=130",
        "portrait":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=1200\u0026w=800",
        "landscape":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=627\u0026w=1200",
        "tiny":
            "https://images.pexels.com/photos/2666598/pexels-photo-2666598.jpeg?auto=compress\u0026cs=tinysrgb\u0026dpr=1\u0026fit=crop\u0026h=200\u0026w=280"
      },
      "liked": false,
      "alt": "Photo of Teepee Under A Starry Sky"
    }
  ],
  "total_results": 117,
  "next_page":
      "https://api.pexels.com/v1/collections/usy2j0g/?page=2\u0026per_page=5",
  "id": "usy2j0g"
});

final popularVideoResponse = jsonEncode({
  "page": 1,
  "per_page": 5,
  "videos": [
    {
      "id": 1526909,
      "width": 1920,
      "height": 1080,
      "duration": 10,
      "full_res": null,
      "tags": [],
      "url": "https://www.pexels.com/video/seal-on-the-beach-1526909/",
      "image":
          "https://images.pexels.com/videos/1526909/free-video-1526909.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 574687,
        "name": "Ruvim Miksanskiy",
        "url": "https://www.pexels.com/@digitech"
      },
      "video_files": [
        {
          "id": 61368,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/296210754.hd.mp4?s=08c03c14c04f15d65901f25b542eb2305090a3d7\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 61369,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/296210754.sd.mp4?s=9db41d71fa61a2cc19757f656fc5c5c5ef9f69ec\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 61370,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/296210754.hd.mp4?s=08c03c14c04f15d65901f25b542eb2305090a3d7\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 61371,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/296210754.sd.mp4?s=9db41d71fa61a2cc19757f656fc5c5c5ef9f69ec\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 61372,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/296210754.m3u8?s=e28800dd24f0ec70ada7d09201dc0fa728bd468b\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 141547,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-0.jpg"
        },
        {
          "id": 141548,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-1.jpg"
        },
        {
          "id": 141549,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-2.jpg"
        },
        {
          "id": 141550,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-3.jpg"
        },
        {
          "id": 141551,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-4.jpg"
        },
        {
          "id": 141552,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-5.jpg"
        },
        {
          "id": 141553,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-6.jpg"
        },
        {
          "id": 141554,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-7.jpg"
        },
        {
          "id": 141555,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-8.jpg"
        },
        {
          "id": 141556,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-9.jpg"
        },
        {
          "id": 141557,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-10.jpg"
        },
        {
          "id": 141558,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-11.jpg"
        },
        {
          "id": 141559,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-12.jpg"
        },
        {
          "id": 141560,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-13.jpg"
        },
        {
          "id": 141561,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/1526909/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 1510090,
      "width": 1920,
      "height": 1080,
      "duration": 5,
      "full_res": null,
      "tags": [],
      "url": "https://www.pexels.com/video/silhouette-of-maple-leaves-1510090/",
      "image":
          "https://images.pexels.com/videos/1510090/free-video-1510090.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 293608,
        "name": "Oleg Magni",
        "url": "https://www.pexels.com/@oleg-magni"
      },
      "video_files": [
        {
          "id": 60994,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/295482071.hd.mp4?s=8716a11fe2222114283a29f8fe49ce8071017332\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 60995,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/295482071.hd.mp4?s=8716a11fe2222114283a29f8fe49ce8071017332\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 60996,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/295482071.sd.mp4?s=238ca35e1e9ae91fd08ce5e290c1f168c7f1fe1b\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 60997,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/295482071.sd.mp4?s=238ca35e1e9ae91fd08ce5e290c1f168c7f1fe1b\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 60998,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/295482071.m3u8?s=0f39519e1d35d7d4a2602bdb0c519f3cb74bb980\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 140257,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-0.jpg"
        },
        {
          "id": 140258,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-1.jpg"
        },
        {
          "id": 140259,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-2.jpg"
        },
        {
          "id": 140260,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-3.jpg"
        },
        {
          "id": 140261,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-4.jpg"
        },
        {
          "id": 140262,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-5.jpg"
        },
        {
          "id": 140263,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-6.jpg"
        },
        {
          "id": 140264,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-7.jpg"
        },
        {
          "id": 140265,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-8.jpg"
        },
        {
          "id": 140266,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-9.jpg"
        },
        {
          "id": 140267,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-10.jpg"
        },
        {
          "id": 140268,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-11.jpg"
        },
        {
          "id": 140269,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-12.jpg"
        },
        {
          "id": 140270,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-13.jpg"
        },
        {
          "id": 140271,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/1510090/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 856973,
      "width": 4096,
      "height": 2304,
      "duration": 14,
      "full_res": null,
      "tags": [],
      "url": "https://www.pexels.com/video/time-lapse-video-sunset-856973/",
      "image":
          "https://images.pexels.com/videos/856973/free-video-856973.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 2659,
        "name": "Pixabay",
        "url": "https://www.pexels.com/@pixabay"
      },
      "video_files": [
        {
          "id": 352634,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 2560,
          "height": 1440,
          "link":
              "https://player.vimeo.com/external/226685105.hd.mp4?s=b6a194faf216cac660ec198e72b4e939cd74dee3\u0026profile_id=170\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352635,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/226685105.hd.mp4?s=b6a194faf216cac660ec198e72b4e939cd74dee3\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352636,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/226685105.sd.mp4?s=90e56fbbb50fbc68a850f8db3f051c7465bfef71\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352637,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 3840,
          "height": 2160,
          "link":
              "https://player.vimeo.com/external/226685105.hd.mp4?s=b6a194faf216cac660ec198e72b4e939cd74dee3\u0026profile_id=172\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352638,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/226685105.hd.mp4?s=b6a194faf216cac660ec198e72b4e939cd74dee3\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352639,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/226685105.sd.mp4?s=90e56fbbb50fbc68a850f8db3f051c7465bfef71\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352640,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/226685105.m3u8?s=95c3e7835aed7eea99a3580bc443be6a2b988e0a\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 58274,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-0.jpg"
        },
        {
          "id": 58275,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-1.jpg"
        },
        {
          "id": 58276,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-2.jpg"
        },
        {
          "id": 58277,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-3.jpg"
        },
        {
          "id": 58278,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-4.jpg"
        },
        {
          "id": 58279,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-5.jpg"
        },
        {
          "id": 58280,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-6.jpg"
        },
        {
          "id": 58281,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-7.jpg"
        },
        {
          "id": 58282,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-8.jpg"
        },
        {
          "id": 58283,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-9.jpg"
        },
        {
          "id": 58284,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-10.jpg"
        },
        {
          "id": 58285,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-11.jpg"
        },
        {
          "id": 58286,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-12.jpg"
        },
        {
          "id": 58287,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-13.jpg"
        },
        {
          "id": 58288,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/856973/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 857251,
      "width": 1920,
      "height": 1280,
      "duration": 14,
      "full_res": null,
      "tags": [],
      "url":
          "https://www.pexels.com/video/beautiful-timelapse-of-the-night-sky-with-reflections-in-a-lake-857251/",
      "image":
          "https://images.pexels.com/videos/857251/free-video-857251.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 121938,
        "name": "eberhard grossgasteiger",
        "url": "https://www.pexels.com/@eberhardgross"
      },
      "video_files": [
        {
          "id": 352600,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1620,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/236075858.hd.mp4?s=539faad12f040eb5afd8de3160db1220f1a5bac0\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352601,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 810,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/236075858.sd.mp4?s=488e67b8e35ca33ef18880b46bb4752da56a4035\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352602,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1080,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/236075858.hd.mp4?s=539faad12f040eb5afd8de3160db1220f1a5bac0\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352603,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 540,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/236075858.sd.mp4?s=488e67b8e35ca33ef18880b46bb4752da56a4035\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 352604,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/236075858.m3u8?s=d2b578fdd311be2183555d5074a3998219a88d5f\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 59354,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-0.jpg"
        },
        {
          "id": 59355,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-1.jpg"
        },
        {
          "id": 59356,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-2.jpg"
        },
        {
          "id": 59357,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-3.jpg"
        },
        {
          "id": 59358,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-4.jpg"
        },
        {
          "id": 59359,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-5.jpg"
        },
        {
          "id": 59360,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-6.jpg"
        },
        {
          "id": 59361,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-7.jpg"
        },
        {
          "id": 59362,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-8.jpg"
        },
        {
          "id": 59363,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-9.jpg"
        },
        {
          "id": 59364,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-10.jpg"
        },
        {
          "id": 59365,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-11.jpg"
        },
        {
          "id": 59366,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-12.jpg"
        },
        {
          "id": 59367,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-13.jpg"
        },
        {
          "id": 59368,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/857251/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 1409899,
      "width": 3840,
      "height": 2160,
      "duration": 21,
      "full_res": null,
      "tags": [],
      "url":
          "https://www.pexels.com/video/waves-rushing-and-splashing-to-the-shore-1409899/",
      "image":
          "https://images.pexels.com/videos/1409899/free-video-1409899.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 439094,
        "name": "Michal Marek",
        "url": "https://www.pexels.com/@michalmarek"
      },
      "video_files": [
        {
          "id": 57069,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 2560,
          "height": 1440,
          "link":
              "https://player.vimeo.com/external/289258217.hd.mp4?s=5cf87d7670d96bbd2c110f4dc97fd5116f4468ad\u0026profile_id=170\u0026oauth2_token_id=57447761"
        },
        {
          "id": 57070,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/289258217.hd.mp4?s=5cf87d7670d96bbd2c110f4dc97fd5116f4468ad\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 57071,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/289258217.hd.mp4?s=5cf87d7670d96bbd2c110f4dc97fd5116f4468ad\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 57072,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/289258217.sd.mp4?s=50b11b521df767740fa56e4743159474f540afa2\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 57073,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 3840,
          "height": 2160,
          "link":
              "https://player.vimeo.com/external/289258217.hd.mp4?s=5cf87d7670d96bbd2c110f4dc97fd5116f4468ad\u0026profile_id=172\u0026oauth2_token_id=57447761"
        },
        {
          "id": 57074,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/289258217.sd.mp4?s=50b11b521df767740fa56e4743159474f540afa2\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 57075,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/289258217.m3u8?s=7afb2f7d2b363bd4b8312e928ecc9b62639abe87\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 128525,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-0.jpg"
        },
        {
          "id": 128526,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-1.jpg"
        },
        {
          "id": 128527,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-2.jpg"
        },
        {
          "id": 128528,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-3.jpg"
        },
        {
          "id": 128529,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-4.jpg"
        },
        {
          "id": 128530,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-5.jpg"
        },
        {
          "id": 128531,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-6.jpg"
        },
        {
          "id": 128532,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-7.jpg"
        },
        {
          "id": 128533,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-8.jpg"
        },
        {
          "id": 128534,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-9.jpg"
        },
        {
          "id": 128535,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-10.jpg"
        },
        {
          "id": 128536,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-11.jpg"
        },
        {
          "id": 128537,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-12.jpg"
        },
        {
          "id": 128538,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-13.jpg"
        },
        {
          "id": 128539,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/1409899/pictures/preview-14.jpg"
        }
      ]
    }
  ],
  "total_results": 342751,
  "next_page":
      "https://api.pexels.com/v1/videos/popular/?page=2\u0026per_page=5",
  "url": "https://api-server.pexels.com/videos/"
});

final videoSearchResponse = jsonEncode({
  "page": 1,
  "per_page": 5,
  "videos": [
    {
      "id": 3571264,
      "width": 3840,
      "height": 2160,
      "duration": 33,
      "full_res": null,
      "tags": [],
      "url":
          "https://www.pexels.com/video/drone-view-of-big-waves-rushing-to-the-shore-3571264/",
      "image":
          "https://images.pexels.com/videos/3571264/free-video-3571264.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 1498112,
        "name": "Enrique Hoyos",
        "url": "https://www.pexels.com/@enriquehoyos"
      },
      "video_files": [
        {
          "id": 368793,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/384761655.sd.mp4?s=383ab4dbc773cd0d5ece3af208d8f963368f67e4\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 368794,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 426,
          "height": 240,
          "link":
              "https://player.vimeo.com/external/384761655.sd.mp4?s=383ab4dbc773cd0d5ece3af208d8f963368f67e4\u0026profile_id=139\u0026oauth2_token_id=57447761"
        },
        {
          "id": 368795,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 2560,
          "height": 1440,
          "link":
              "https://player.vimeo.com/external/384761655.hd.mp4?s=5eecd63d94629aa928726912a5601a7577a3ca8a\u0026profile_id=170\u0026oauth2_token_id=57447761"
        },
        {
          "id": 368796,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/384761655.hd.mp4?s=5eecd63d94629aa928726912a5601a7577a3ca8a\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 368797,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/384761655.sd.mp4?s=383ab4dbc773cd0d5ece3af208d8f963368f67e4\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 368798,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 3840,
          "height": 2160,
          "link":
              "https://player.vimeo.com/external/384761655.hd.mp4?s=5eecd63d94629aa928726912a5601a7577a3ca8a\u0026profile_id=172\u0026oauth2_token_id=57447761"
        },
        {
          "id": 368799,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/384761655.hd.mp4?s=5eecd63d94629aa928726912a5601a7577a3ca8a\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 368800,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/384761655.m3u8?s=98f0c4fc2fd9973ff5372c4f300117c8f9bb5953\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 815098,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-0.jpg"
        },
        {
          "id": 815099,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-1.jpg"
        },
        {
          "id": 815100,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-2.jpg"
        },
        {
          "id": 815101,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-3.jpg"
        },
        {
          "id": 815102,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-4.jpg"
        },
        {
          "id": 815103,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-5.jpg"
        },
        {
          "id": 815104,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-6.jpg"
        },
        {
          "id": 815105,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-7.jpg"
        },
        {
          "id": 815106,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-8.jpg"
        },
        {
          "id": 815107,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-9.jpg"
        },
        {
          "id": 815108,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-10.jpg"
        },
        {
          "id": 815109,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-11.jpg"
        },
        {
          "id": 815110,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-12.jpg"
        },
        {
          "id": 815111,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-13.jpg"
        },
        {
          "id": 815112,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/3571264/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 6394054,
      "width": 4096,
      "height": 2048,
      "duration": 12,
      "full_res": null,
      "tags": [],
      "url": "https://www.pexels.com/video/waterfall-in-the-forest-6394054/",
      "image":
          "https://images.pexels.com/videos/6394054/adventure-beauty-forrest-hike-6394054.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 417939,
        "name": "Peter Fowler",
        "url": "https://www.pexels.com/@peter-fowler-417939"
      },
      "video_files": [
        {
          "id": 2160945,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 2048,
          "height": 1024,
          "link":
              "https://player.vimeo.com/external/496797033.hd.mp4?s=b87c1e6e87a81a60cdfc9851b3f739c115a23adf\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2160946,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1366,
          "height": 684,
          "link":
              "https://player.vimeo.com/external/496797033.hd.mp4?s=b87c1e6e87a81a60cdfc9851b3f739c115a23adf\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2160947,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 4096,
          "height": 2048,
          "link":
              "https://player.vimeo.com/external/496797033.hd.mp4?s=b87c1e6e87a81a60cdfc9851b3f739c115a23adf\u0026profile_id=172\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2160948,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 2732,
          "height": 1366,
          "link":
              "https://player.vimeo.com/external/496797033.hd.mp4?s=b87c1e6e87a81a60cdfc9851b3f739c115a23adf\u0026profile_id=170\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2160949,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 426,
          "height": 214,
          "link":
              "https://player.vimeo.com/external/496797033.sd.mp4?s=5ed472674c6878067353d85224650f6bc4f4a247\u0026profile_id=139\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2160950,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 480,
          "link":
              "https://player.vimeo.com/external/496797033.sd.mp4?s=5ed472674c6878067353d85224650f6bc4f4a247\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2160951,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 320,
          "link":
              "https://player.vimeo.com/external/496797033.sd.mp4?s=5ed472674c6878067353d85224650f6bc4f4a247\u0026profile_id=164\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 4391143,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-0.jpg"
        },
        {
          "id": 4391144,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-1.jpg"
        },
        {
          "id": 4391145,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-2.jpg"
        },
        {
          "id": 4391146,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-3.jpg"
        },
        {
          "id": 4391147,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-4.jpg"
        },
        {
          "id": 4391148,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-5.jpg"
        },
        {
          "id": 4391149,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-6.jpg"
        },
        {
          "id": 4391150,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-7.jpg"
        },
        {
          "id": 4391151,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-8.jpg"
        },
        {
          "id": 4391152,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-9.jpg"
        },
        {
          "id": 4391153,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-10.jpg"
        },
        {
          "id": 4391154,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-11.jpg"
        },
        {
          "id": 4391155,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-12.jpg"
        },
        {
          "id": 4391156,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-13.jpg"
        },
        {
          "id": 4391157,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/6394054/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 6981411,
      "width": 1920,
      "height": 1080,
      "duration": 14,
      "full_res": null,
      "tags": [],
      "url":
          "https://www.pexels.com/video/a-magnificent-view-of-the-waterfalls-6981411/",
      "image":
          "https://images.pexels.com/videos/6981411/pexels-photo-6981411.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 11437196,
        "name": "Mikhail Nilov",
        "url": "https://www.pexels.com/@mikhail-nilov"
      },
      "video_files": [
        {
          "id": 2673285,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/517619980.hd.mp4?s=dcab905de99f4814ba133b1b89347626363473b3\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2673286,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/517619980.hd.mp4?s=dcab905de99f4814ba133b1b89347626363473b3\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2673287,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 426,
          "height": 240,
          "link":
              "https://player.vimeo.com/external/517619980.sd.mp4?s=61be3cadb6566d23fb20ad2cf54876e2a85a78c5\u0026profile_id=139\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2673288,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/517619980.sd.mp4?s=61be3cadb6566d23fb20ad2cf54876e2a85a78c5\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 2673289,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/517619980.sd.mp4?s=61be3cadb6566d23fb20ad2cf54876e2a85a78c5\u0026profile_id=164\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 5526606,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-0.jpg"
        },
        {
          "id": 5526617,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-1.jpg"
        },
        {
          "id": 5526631,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-2.jpg"
        },
        {
          "id": 5526642,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-3.jpg"
        },
        {
          "id": 5526653,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-4.jpg"
        },
        {
          "id": 5526673,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-5.jpg"
        },
        {
          "id": 5526683,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-6.jpg"
        },
        {
          "id": 5526691,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-7.jpg"
        },
        {
          "id": 5526699,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-8.jpg"
        },
        {
          "id": 5526703,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-9.jpg"
        },
        {
          "id": 5526710,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-10.jpg"
        },
        {
          "id": 5526717,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-11.jpg"
        },
        {
          "id": 5526721,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-12.jpg"
        },
        {
          "id": 5526729,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-13.jpg"
        },
        {
          "id": 5526737,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/6981411/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 3173312,
      "width": 3840,
      "height": 2160,
      "duration": 6,
      "full_res": null,
      "tags": [],
      "url":
          "https://www.pexels.com/video/the-strong-force-of-niagara-falls-3173312/",
      "image":
          "https://images.pexels.com/videos/3173312/free-video-3173312.jpg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 1659830,
        "name": "Aric Shelby",
        "url": "https://www.pexels.com/@aric-shelby-1659830"
      },
      "video_files": [
        {
          "id": 249595,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/370762164.hd.mp4?s=84f78c119b8bd17aaddb7bd5ce5a59eaac87c13d\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 249596,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/370762164.sd.mp4?s=79162c914dc5d9e4576be4fde2daff51f534083a\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 249597,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 3840,
          "height": 2160,
          "link":
              "https://player.vimeo.com/external/370762164.hd.mp4?s=84f78c119b8bd17aaddb7bd5ce5a59eaac87c13d\u0026profile_id=172\u0026oauth2_token_id=57447761"
        },
        {
          "id": 249598,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/370762164.hd.mp4?s=84f78c119b8bd17aaddb7bd5ce5a59eaac87c13d\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 249599,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/370762164.sd.mp4?s=79162c914dc5d9e4576be4fde2daff51f534083a\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 249600,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 426,
          "height": 240,
          "link":
              "https://player.vimeo.com/external/370762164.sd.mp4?s=79162c914dc5d9e4576be4fde2daff51f534083a\u0026profile_id=139\u0026oauth2_token_id=57447761"
        },
        {
          "id": 249601,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 2560,
          "height": 1440,
          "link":
              "https://player.vimeo.com/external/370762164.hd.mp4?s=84f78c119b8bd17aaddb7bd5ce5a59eaac87c13d\u0026profile_id=170\u0026oauth2_token_id=57447761"
        },
        {
          "id": 249602,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/370762164.m3u8?s=fc1f750be4603b1f158a948a1aad98095229b78e\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 564924,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-0.jpg"
        },
        {
          "id": 564931,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-1.jpg"
        },
        {
          "id": 564936,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-2.jpg"
        },
        {
          "id": 564943,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-3.jpg"
        },
        {
          "id": 564950,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-4.jpg"
        },
        {
          "id": 564956,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-5.jpg"
        },
        {
          "id": 564961,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-6.jpg"
        },
        {
          "id": 564967,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-7.jpg"
        },
        {
          "id": 564973,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-8.jpg"
        },
        {
          "id": 564979,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-9.jpg"
        },
        {
          "id": 564984,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-10.jpg"
        },
        {
          "id": 564988,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-11.jpg"
        },
        {
          "id": 564993,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-12.jpg"
        },
        {
          "id": 565000,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-13.jpg"
        },
        {
          "id": 565006,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/3173312/pictures/preview-14.jpg"
        }
      ]
    },
    {
      "id": 4763824,
      "width": 3840,
      "height": 2160,
      "duration": 14,
      "full_res": null,
      "tags": [],
      "url":
          "https://www.pexels.com/video/drone-flying-over-the-mountain-peak-4763824/",
      "image":
          "https://images.pexels.com/videos/4763824/4k-4k50fps-adventure-backpack-4763824.jpeg?auto=compress\u0026cs=tinysrgb\u0026fit=crop\u0026h=630\u0026w=1200",
      "avg_color": null,
      "user": {
        "id": 649765,
        "name": "Yaroslav Shuraev",
        "url": "https://www.pexels.com/@yaroslav-shuraev"
      },
      "video_files": [
        {
          "id": 954645,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 3840,
          "height": 2160,
          "link":
              "https://player.vimeo.com/external/434045526.hd.mp4?s=20f75bfc99c6577c31e4a530dbc0776ce9ba4c27\u0026profile_id=172\u0026oauth2_token_id=57447761"
        },
        {
          "id": 954646,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1280,
          "height": 720,
          "link":
              "https://player.vimeo.com/external/434045526.hd.mp4?s=20f75bfc99c6577c31e4a530dbc0776ce9ba4c27\u0026profile_id=174\u0026oauth2_token_id=57447761"
        },
        {
          "id": 954647,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 640,
          "height": 360,
          "link":
              "https://player.vimeo.com/external/434045526.sd.mp4?s=c27eecc69a27dbc4ff2b87d38afc35f1a9e7c02d\u0026profile_id=164\u0026oauth2_token_id=57447761"
        },
        {
          "id": 954648,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 2560,
          "height": 1440,
          "link":
              "https://player.vimeo.com/external/434045526.hd.mp4?s=20f75bfc99c6577c31e4a530dbc0776ce9ba4c27\u0026profile_id=170\u0026oauth2_token_id=57447761"
        },
        {
          "id": 954649,
          "quality": "hd",
          "file_type": "video/mp4",
          "width": 1920,
          "height": 1080,
          "link":
              "https://player.vimeo.com/external/434045526.hd.mp4?s=20f75bfc99c6577c31e4a530dbc0776ce9ba4c27\u0026profile_id=175\u0026oauth2_token_id=57447761"
        },
        {
          "id": 954650,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 426,
          "height": 240,
          "link":
              "https://player.vimeo.com/external/434045526.sd.mp4?s=c27eecc69a27dbc4ff2b87d38afc35f1a9e7c02d\u0026profile_id=139\u0026oauth2_token_id=57447761"
        },
        {
          "id": 954651,
          "quality": "sd",
          "file_type": "video/mp4",
          "width": 960,
          "height": 540,
          "link":
              "https://player.vimeo.com/external/434045526.sd.mp4?s=c27eecc69a27dbc4ff2b87d38afc35f1a9e7c02d\u0026profile_id=165\u0026oauth2_token_id=57447761"
        },
        {
          "id": 954652,
          "quality": "hls",
          "file_type": "video/mp4",
          "width": null,
          "height": null,
          "link":
              "https://player.vimeo.com/external/434045526.m3u8?s=1e6925e6e9aa3642b4c5d5106dd456dea6c2cd17\u0026oauth2_token_id=57447761"
        }
      ],
      "video_pictures": [
        {
          "id": 1911019,
          "nr": 0,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-0.jpg"
        },
        {
          "id": 1911020,
          "nr": 1,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-1.jpg"
        },
        {
          "id": 1911021,
          "nr": 2,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-2.jpg"
        },
        {
          "id": 1911022,
          "nr": 3,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-3.jpg"
        },
        {
          "id": 1911023,
          "nr": 4,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-4.jpg"
        },
        {
          "id": 1911024,
          "nr": 5,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-5.jpg"
        },
        {
          "id": 1911025,
          "nr": 6,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-6.jpg"
        },
        {
          "id": 1911026,
          "nr": 7,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-7.jpg"
        },
        {
          "id": 1911027,
          "nr": 8,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-8.jpg"
        },
        {
          "id": 1911028,
          "nr": 9,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-9.jpg"
        },
        {
          "id": 1911029,
          "nr": 10,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-10.jpg"
        },
        {
          "id": 1911030,
          "nr": 11,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-11.jpg"
        },
        {
          "id": 1911031,
          "nr": 12,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-12.jpg"
        },
        {
          "id": 1911032,
          "nr": 13,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-13.jpg"
        },
        {
          "id": 1911033,
          "nr": 14,
          "picture":
              "https://images.pexels.com/videos/4763824/pictures/preview-14.jpg"
        }
      ]
    }
  ],
  "total_results": 8000,
  "next_page":
      "https://api.pexels.com/v1/videos/search/?page=2\u0026per_page=5\u0026query=nature",
  "url": "https://api-server.pexels.com/search/videos/nature/"
});
