#Bonar

[![Build Status](http://img.shields.io/travis/mrfoto/bonar.svg?style=flat-square)](https://travis-ci.org/BloomSN/bonar)
[![Code Climate](http://img.shields.io/codeclimate/github/mrfoto/bonar.svg?style=flat-square)](https://codeclimate.com/github/BloomSN/bonar)
[![Coverage Status](http://img.shields.io/codeclimate/coverage/github/mrfoto/bonar.svg?style=flat-square)](https://codeclimate.com/github/BloomSN/bonar)
[![Dependency Status](http://img.shields.io/gemnasium/mrfoto/bonar.svg?style=flat-square)](https://gemnasium.com/BloomSN/bonar)

> bónar -ja m (ọ̑) kdor ve, kje imajo bone: poglejmo na bonar / ura je bila 19 in ni vedela kje bi jedla, zato je pogledala na bonar / ostala sva brez besed in ti si rekel bonar

[Bonar: ponudniki študentske prehrane na zemljevidu](http://bonar.si/)

##About
###Scratching my own itch.

Nekega dne sem se lačen znašel v neznanem kraju. Kot pravi študent, sem najprej pomislil "le kje lahko jem na bone". Ugotovil sem, da ne obstaja niti ena mobilna aplikacija / mobilnikom prijazna spletna stran, ki bi prikazovala aktualno ponudbo študentske prehrane. Vse so ali nehali razvijati, ali pa prikazujejo netočne in/ali zastarele informacije. Zato sem se odločil, da naredim svojo.

###Tech
Ko sem začenjal z izdelavo, sem se ravno začenjal učiti [Ruby on Rails](http://rubyonrails.org/). Ker ni nič boljšega, kot učenje s prakso, sem naredil spletno aplikacijo kar z Railsi. Bonar je tako moj prvi RoR projekt in tako moj playground.

###Issues
Če imate kakršnekoli probleme, pripombe ali ideje glede Bonarja, kar odprite [issue](https://github.com/BloomSN/bonar/issues).

##Thanks

* Miha Rekar [@mrfoto](https://github.com/mrfoto) - for building this awsome project
* Boštjan Vidovič: [@bostjanvidovic](https://twitter.com/bostjanvidovic) - for the icon
* Mladen Prajdić: [@MladenPrajdic](https://twitter.com/MladenPrajdic) - for his sql expertise
* Adam Sanderson: [@adamsanderson](https://github.com/adamsanderson) - for help with Postgres arrays
* Peter Gracar: [@Pickled_Pete](https://twitter.com/Pickled_Pete) - for the name "Bonar"
* Domen Savič: [@savicdomen](https://twitter.com/savicdomen) - for countless RTs
* All other Facebook friends and Twitter followers for spreading the love

##Unofficial API

The API is in **no way** associated with official website [Študentska prehrana](https://www.studentska-prehrana.si/). It is simply one more thing I'm giving back to community as a part of [Open data.si project](http://opendata.si/).

I scrape the data from the official site every day at 05:00 GMT. The updating process takes roughly 10 minutes.

Should you use it, you absolutely must cache the response, since the data only changes once per day and the size of the response is pretty big.

###Get restaurants

* `GET http://bonar.si/api/restaurants` will return all restaurants.

```json
[
  {
    "id": 12813,
    "name": "Halo Shaolin - dostava",
    "address": "Trg OF 13, Ljubljana",
    "telephone": [
      "040549068",
      "0803808"
    ],
    "price": "4.0",
    "coordinates": [
      "46.0541149271136",
      "14.557732745077"
    ],
    "opening": {
      "week": [
        "10:00",
        "20:00"
      ],
      "saturday": [
        "11:00",
        "20:00"
      ],
      "sunday": [
        "11:00",
        "20:00"
      ],
      "notes": "27.12. od 08.00 do 18.0030.12. od 08.00 do 20.0031.12. od 08.00 do 15.00"
    },
    "menu": [
      [
        "kislo pekoča juha",
        "govedina zelenjavo",
        "mešana",
        "ocvrta banana"
      ],
      [
        "zelenjavna juha",
        "mongolska govedina",
        "mešana",
        "Ocvrti ananas"
      ],
      [
        "koruzna z rakci",
        "riž s piščancem",
        "mešana",
        "ocvrta banana"
      ]
    ],
    "features": [
      {
        "id": 2,
        "title": "celiakiji prijazni obroki"
      },
      {
        "id": 5,
        "title": "dostava"
      },
      {
        "id": 11,
        "title": "kosila"
      },
      {
        "id": 10,
        "title": "odprto ob vikendih"
      },
      {
        "id": 1,
        "title": "vegetarijanska prehrana"
      }
    ]
  },
  {
    "id": 12814,
    "name": "Hiša pod gradom",
    "address": "Streliška 10, Ljubljana",
    "telephone": [],
    "price": "3.27",
    "coordinates": [
      "46.0493199622809",
      "14.5113411755481"
    ],
    "opening": {
      "week": [
        "11:00",
        "20:00"
      ],
      "saturday": [
        "12:00",
        "20:00"
      ],
      "sunday": false
    },
    "menu": [],
    "features": [
      {
        "id": 2,
        "title": "celiakiji prijazni obroki"
      },
      {
        "id": 11,
        "title": "kosila"
      },
      {
        "id": 10,
        "title": "odprto ob vikendih"
      },
      {
        "id": 1,
        "title": "vegetarijanska prehrana"
      }
    ]
  },…
]
```
###From here on you can find the new v2 api, there might be some changes here so proceed with caution:

* `GET http://bonar.si/api/v2/restaurants/detail`

```json
[
  {
    "id": 12813,
    "name": "Halo Shaolin - dostava",
    "address": "Trg OF 13, Ljubljana",
    "telephone": [
      "040549068",
      "0803808"
    ],
    "price": "4.0",
    "coordinates": [
      "46.0541149271136",
      "14.557732745077"
    ],
    "opening": {
      "week": [
        "10:00",
        "20:00"
      ],
      "saturday": [
        "11:00",
        "20:00"
      ],
      "sunday": [
        "11:00",
        "20:00"
      ],
      "notes": "27.12. od 08.00 do 18.0030.12. od 08.00 do 20.0031.12. od 08.00 do 15.00"
    },
    "menu": [
      [
        "kislo pekoča juha",
        "govedina zelenjavo",
        "mešana",
        "ocvrta banana"
      ],
      [
        "zelenjavna juha",
        "mongolska govedina",
        "mešana",
        "Ocvrti ananas"
      ],
      [
        "koruzna z rakci",
        "riž s piščancem",
        "mešana",
        "ocvrta banana"
      ]
    ],
    "features": [
      {
        "id": 2,
        "title": "celiakiji prijazni obroki"
      },
      {
        "id": 5,
        "title": "dostava"
      },
      {
        "id": 11,
        "title": "kosila"
      },
      {
        "id": 10,
        "title": "odprto ob vikendih"
      },
      {
        "id": 1,
        "title": "vegetarijanska prehrana"
      }
    ]
  },
  {
    "id": 12814,
    "name": "Hiša pod gradom",
    "address": "Streliška 10, Ljubljana",
    "telephone": [],
    "price": "3.27",
    "coordinates": [
      "46.0493199622809",
      "14.5113411755481"
    ],
    "opening": {
      "week": [
        "11:00",
        "20:00"
      ],
      "saturday": [
        "12:00",
        "20:00"
      ],
      "sunday": false
    },
    "menu": [],
    "features": [
      {
        "id": 2,
        "title": "celiakiji prijazni obroki"
      },
      {
        "id": 11,
        "title": "kosila"
      },
      {
        "id": 10,
        "title": "odprto ob vikendih"
      },
      {
        "id": 1,
        "title": "vegetarijanska prehrana"
      }
    ]
  },…
]
```

* `GET http://bonar.si/api/v2/restaurants/list`

```json
[
	{
		"id":11457,
		"name":"Restavracija McDonald's Novo mesto",
		"address":"Ljubljanska 24, Novo mesto"},
	},…
]
```

* `GET http://bonar.si/api/v2/restaurants/map`

```json
[
	{
		"id":11457,
		"name":"Restavracija McDonald's Novo mesto",
		"address":"Ljubljanska 24, Novo mesto"},
		"latitude":"45.81474043922832",
		"longitude":"15.15410678653271"
	},…
]
```

* `GET http://bonar.si/api/v2/restaurants/ids`

```json
[
	{
		"id":11457,
	…
	}
]
```

* `GET http://bonar.si/api/v2/restaurants/ids_array`

Not completed.

* `GET http://bonar.si/api/v2/restaurant/{id}`

```json
[
	{
		"telephone":[],
		"price":"3,87 EUR",
		"coordinates": [
			"46.0503595819777",
			"14.5062179861431"],
		"opening":{
			"week":[
				"11:00",
				"20:00"
			],
			"saturday":[
				"11:00",
				"20:00"
			],"sunday":[
				"11:00",
				"20:00"
			]
		}
	},…
]
```

* `GET http://bonar.si/api/v2/restaurant/with_menu/{id}`

```json
[
  {
    "telephone": [
      
    ],
    "price": "3,87 EUR",
    "coordinates": [
      "46.0503595819777",
      "14.5062179861431"
    ],
    "opening": {
      "week": [
        "11:00",
        "20:00"
      ],
      "saturday": [
        "11:00",
        "20:00"
      ],
      "sunday": [
        "11:00",
        "20:00"
      ]
    },
    "menu": [
      [
        "Dnevna juha",
        "Testenine s pi\u0161\u010dancem in bu\u010dkami",
        "Me\u0161ana solata",
        "Sezonsko sadje"
      ],
      [
        "Dnevna juha",
        "Testenine bolognese",
        "Me\u0161ana solata",
        "Sezonsko sadje"
      ],
      [
        "Dnevna juha",
        "Testenine carbonara",
        "Me\u0161ana solata",
        "Sezonsko sadje"
      ],
      [
        "Dnevna juha",
        "Njoki s pi\u0161\u010dancem in bu\u010dkami",
        "Me\u0161ana solata",
        "Sezonsko sadje"
      ],…
    ]
  }
]
```

* `GET http://bonar.si/api/v2/restaurant/menu/{id}`

```json
[
  {
    "menu": [
      [
        "Dnevna juha",
        "Testenine s pi\u0161\u010dancem in bu\u010dkami",
        "Me\u0161ana solata",
        "Sezonsko sadje"
      ],
      [
        "Dnevna juha",
        "Testenine bolognese",
        "Me\u0161ana solata",
        "Sezonsko sadje"
      ],
      [
        "Dnevna juha",
        "Testenine carbonara",
        "Me\u0161ana solata",
        "Sezonsko sadje"
      ],…
    ]
  }
]
      
```
