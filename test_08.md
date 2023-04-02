# Send a GET request following redirects

## Action

1. Make request that does not follow redirects:
   ```
   xh get https://httpbin.org/redirect/1
   ```
2. Verify `302 Found` HTTP code.
3. Make request that follows redirects:
   ```
   xh get https://httpbin.org/redirect/1 -F
   ```
4. Verify `200 OK` HTTP code.


## Expected results

The requests return a valid HTTP code and headers.

Request not following redirects should return 302 Found HTTP code:

```
HTTP/2.0 302 Found
access-control-allow-credentials: true
access-control-allow-origin: *
content-length: 215
content-type: text/html; charset=utf-8
date: Sat, 01 Apr 2023 19:14:39 GMT
location: /get
server: gunicorn/19.9.0

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<title>Redirecting...</title>
<h1>Redirecting...</h1>
<p>You should be redirected automatically to target URL: <a href="/get">/get</a>.  If not click the link.
```

Request following redirects should return 200 OK HTTP code:
```
HTTP/2.0 200 OK
access-control-allow-credentials: true
access-control-allow-origin: *
content-length: 297
content-type: application/json
date: Sat, 01 Apr 2023 19:15:53 GMT
server: gunicorn/19.9.0

{
    "args": {},
    "headers": {
        "Accept": "*/*",
        "Accept-Encoding": "gzip, deflate, br",
        "Host": "httpbin.org",
        "User-Agent": "xh/0.18.0",
        "X-Amzn-Trace-Id": "Root=1-642882e9-65956b33171201a604b726bf"
    },
    "origin": "91.149.234.5",
    "url": "https://httpbin.org/get"
}
```