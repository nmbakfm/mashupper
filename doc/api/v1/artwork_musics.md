## POST /artwork_musics
ステータスコードが201であること(メロディー保存).

### Example

#### Request
```
POST /api/v1/artwork_musics.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 36
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

artwork_id=1&music_id=1&usage=melody
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 53
Content-Type: application/json; charset=utf-8
ETag: W/"82a561f23efc89e7668cd8321f2d11bb"
Location: http://www.example.com/api/v1/artwork_musics/1
X-Request-Id: c64c15ad-81a0-4ccd-bf11-37ec97e0be5a
X-Runtime: 0.070190

{
  "id": 1,
  "artwork_id": 1,
  "music_id": 1,
  "usage": "melody"
}
```

## POST /artwork_musics
ステータスコードが201であること(伴奏保存).

### Example

#### Request
```
POST /api/v1/artwork_musics.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 43
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

artwork_id=1&music_id=1&usage=accompaniment
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 60
Content-Type: application/json; charset=utf-8
ETag: W/"812513024ab3016ff42430bb79b18cb8"
Location: http://www.example.com/api/v1/artwork_musics/2
X-Request-Id: fbfdb8dc-004b-4745-9635-bd32b706769c
X-Runtime: 0.013314

{
  "id": 2,
  "artwork_id": 1,
  "music_id": 1,
  "usage": "accompaniment"
}
```
