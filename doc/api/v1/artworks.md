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
Content-Length: 173
Content-Type: application/json; charset=utf-8
ETag: W/"23958a62388c38487734bc8e9bc9904e"
Location: http://www.example.com/api/v1/artworks/1
X-Request-Id: cc1cce16-f9d8-4e4a-82ba-b7b9f96b6ebb
X-Runtime: 0.242975

{
  "id": 1,
  "user_id": null,
  "title": "title",
  "created_at": "2018-05-25T09:35:59.412Z",
  "updated_at": "2018-05-25T09:35:59.412Z",
  "url": "http://www.example.com/api/v1/artworks/1.json"
}
```
