## POST /api/v1/artworks/:artwork_id/musics
ステータスコードが201であること.

### Example

#### Request
```
POST /api/v1/artworks/1/musics.json HTTP/1.1
Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
Content-Length: 509
Content-Type: application/x-www-form-urlencoded
Host: www.example.com

beginning_margin_sec=1&chords[][chord_name]=Cm7&chords[][bar]=0&chords[][beat]=0&chords[][chord_name]=D%2FA&chords[][bar]=0&chords[][beat]=1.5&chords[][chord_name]=Baug&chords[][bar]=1&chords[][beat]=0&chords[][chord_name]=Edim&chords[][bar]=1&chords[][beat]=1.5&bpms[][bpm]=120&bpms[][bar]=0&bpms[][beat]=0&hyoshis[][denominator]=4&hyoshis[][numerator]=4&hyoshis[][bar]=0&hyoshis[][beat]=0&phrases[][bar]=0&phrases[][beat]=0&phrases[][bar]=4&phrases[][beat]=0&keys[][key]=G+major&keys[][bar]=0&keys[][beat]=0
```

#### Response
```
HTTP/1.1 201
Cache-Control: max-age=0, private, must-revalidate
Content-Length: 219
Content-Type: application/json; charset=utf-8
ETag: W/"401e6b0c3d326509c4dec3f5a9321169"
Location: http://www.example.com/api/v1/artworks/1/musics/1
X-Request-Id: 9e5b3f03-5e9b-4ea7-a51f-a9332f9ec52e
X-Runtime: 0.418919

{
  "id": 1,
  "artwork_id": 1,
  "title": null,
  "usage": null,
  "beginning_margin_sec": 1.0,
  "created_at": "2018-05-25T09:36:00.094Z",
  "updated_at": "2018-05-25T09:36:00.094Z",
  "url": "http://www.example.com/api/v1/artworks/1/musics/1.json"
}
```
