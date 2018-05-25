## GET /api/v1/artworks
ステータスコードが200であること.

### Example

#### Request
```
GET /api/v1/artworks.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 0
Host: www.example.com
```

#### Response
```
HTTP/1.1 200
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 101
Content-Type: application/json; charset=utf-8
ETag: W/"811d8ca5d0bbe03e2593093daae8e70e"
X-Request-Id: 044fd998-5285-49d9-92e3-9c78bdd7d71e
X-Runtime: 0.016437

[
  {
    "id": 1,
    "user_id": null,
    "title": "thisistitle",
    "url": "http://www.example.com/api/v1/artworks/1.json"
  }
]
```

## POST /api/v1/artworks
ステータスコードが201であること.

### Example

#### Request
```
POST /api/v1/artworks.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 11
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

title=title
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 93
Content-Type: application/json; charset=utf-8
ETag: W/"c5916341433016c327cf32a8181ac1b8"
Location: http://www.example.com/api/v1/artworks/1
X-Request-Id: 713a5218-155e-46da-86ff-2d89ed713eb2
X-Runtime: 0.008869

{
  "id": 1,
  "user_id": null,
  "title": "title",
  "url": "http://www.example.com/api/v1/artworks/1.json"
}
```
