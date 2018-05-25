## POST /api/v1/musics
ステータスコードが201であること.

### Example

#### Request
```
POST /api/v1/musics.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 527
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

title=thisistitle&beginning_margin_sec=1&chords[][chord_name]=Cm7&chords[][bar]=0&chords[][beat]=0&chords[][chord_name]=D%2FA&chords[][bar]=0&chords[][beat]=1.5&chords[][chord_name]=Baug&chords[][bar]=1&chords[][beat]=0&chords[][chord_name]=Edim&chords[][bar]=1&chords[][beat]=1.5&bpms[][bpm]=120&bpms[][bar]=0&bpms[][beat]=0&hyoshis[][denominator]=4&hyoshis[][numerator]=4&hyoshis[][bar]=0&hyoshis[][beat]=0&phrases[][bar]=0&phrases[][beat]=0&phrases[][bar]=4&phrases[][beat]=0&keys[][key]=G+major&keys[][bar]=0&keys[][beat]=0
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 556
Content-Type: application/json; charset=utf-8
ETag: W/"c79d7aa1bf3323a3e6cfd27798acfa04"
Location: http://www.example.com/api/v1/musics/1
X-Request-Id: a07444fa-114c-4d29-a28a-7f1f7dda8c0e
X-Runtime: 0.132849

{
  "id": 1,
  "user_id": null,
  "title": "thisistitle",
  "beginning_margin_sec": 1.0,
  "chord": [
    {
      "id": 1,
      "chord_name": "Cm7",
      "bar": 0,
      "beat": 0.0
    },
    {
      "id": 2,
      "chord_name": "D/A",
      "bar": 0,
      "beat": 1.5
    },
    {
      "id": 3,
      "chord_name": "Baug",
      "bar": 1,
      "beat": 0.0
    },
    {
      "id": 4,
      "chord_name": "Edim",
      "bar": 1,
      "beat": 1.5
    }
  ],
  "bpms": [
    {
      "id": 1,
      "bpm": 120.0,
      "bar": 0,
      "beat": 0.0
    }
  ],
  "hyoshis": [
    {
      "id": 1,
      "denominator": 4,
      "numerator": 4,
      "bar": 0,
      "beat": 0.0
    }
  ],
  "keys": [
    {
      "id": 1,
      "key": 0,
      "bar": 0,
      "beat": 0.0
    }
  ],
  "phrases": [
    {
      "id": 1,
      "bar": 0,
      "beat": 0.0
    },
    {
      "id": 2,
      "bar": 4,
      "beat": 0.0
    }
  ],
  "url": "http://www.example.com/api/v1/musics/1.json"
}
```

## GET /api/v1/musics
ステータスコードが200であること.

### Example

#### Request
```
GET /api/v1/musics.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 564
Content-Type: application/json; charset=utf-8
ETag: W/"7a7fad84edf178e661425896ad59e51d"
X-Request-Id: c6b12fa4-e631-4497-b874-f984ffe7eefb
X-Runtime: 0.021501

[
  {
    "id": 1,
    "user_id": null,
    "title": "thisistitle",
    "beginning_margin_sec": 1.0,
    "chord": [
      {
        "id": 29,
        "chord_name": "Cm7",
        "bar": 0,
        "beat": 0.0
      },
      {
        "id": 30,
        "chord_name": "D/A",
        "bar": 0,
        "beat": 1.5
      },
      {
        "id": 31,
        "chord_name": "Baug",
        "bar": 1,
        "beat": 0.0
      },
      {
        "id": 32,
        "chord_name": "Edim",
        "bar": 1,
        "beat": 1.5
      }
    ],
    "bpms": [
      {
        "id": 8,
        "bpm": 120.0,
        "bar": 0,
        "beat": 0.0
      }
    ],
    "hyoshis": [
      {
        "id": 8,
        "denominator": 4,
        "numerator": 4,
        "bar": 0,
        "beat": 0.0
      }
    ],
    "keys": [
      {
        "id": 8,
        "key": 0,
        "bar": 0,
        "beat": 0.0
      }
    ],
    "phrases": [
      {
        "id": 15,
        "bar": 0,
        "beat": 0.0
      },
      {
        "id": 16,
        "bar": 4,
        "beat": 0.0
      }
    ],
    "url": "http://www.example.com/api/v1/musics/1.json"
  }
]
```

## GET /api/v1/musics
ステータスコードが200であること.

### Example

#### Request
```
GET /api/v1/musics.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 564
Content-Type: application/json; charset=utf-8
ETag: W/"abdb23c97c857f73e3c51f451d900e44"
X-Request-Id: f4e9e597-46b1-435e-997d-e32961e1e4f8
X-Runtime: 0.015822

[
  {
    "id": 1,
    "user_id": null,
    "title": "thisistitle",
    "beginning_margin_sec": 1.0,
    "chord": [
      {
        "id": 33,
        "chord_name": "Cm7",
        "bar": 0,
        "beat": 0.0
      },
      {
        "id": 34,
        "chord_name": "D/A",
        "bar": 0,
        "beat": 1.5
      },
      {
        "id": 35,
        "chord_name": "Baug",
        "bar": 1,
        "beat": 0.0
      },
      {
        "id": 36,
        "chord_name": "Edim",
        "bar": 1,
        "beat": 1.5
      }
    ],
    "bpms": [
      {
        "id": 9,
        "bpm": 120.0,
        "bar": 0,
        "beat": 0.0
      }
    ],
    "hyoshis": [
      {
        "id": 9,
        "denominator": 4,
        "numerator": 4,
        "bar": 0,
        "beat": 0.0
      }
    ],
    "keys": [
      {
        "id": 9,
        "key": 0,
        "bar": 0,
        "beat": 0.0
      }
    ],
    "phrases": [
      {
        "id": 17,
        "bar": 0,
        "beat": 0.0
      },
      {
        "id": 18,
        "bar": 4,
        "beat": 0.0
      }
    ],
    "url": "http://www.example.com/api/v1/musics/1.json"
  }
]
```
