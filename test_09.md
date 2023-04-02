# Send a GET request with --max-redirects parameter

## Action

1. Make request with insufficient number of max redirects:
   ```
   xh get https://httpbin.org/redirect/3 -F --max-redirects 1
   ```
2. Make request with sufficient number of redirects:
   ```
   xh get https://httpbin.org/redirect/3 -F --max-redirects 5
   ```


## Expected results

The requests return a valid HTTP code and headers.

Making request with insufficient number of max redirects should return an error

```
xh: error: Too many redirects (--max-redirects=1)
```

Request with sufficient number of redirects should return 200 OK HTTP code:
```
HTTP/2.0 200 OK
access-control-allow-credentials: true
access-control-allow-origin: *
content-length: 297
content-type: application/json
date: Sat, 01 Apr 2023 19:20:31 GMT
server: gunicorn/19.9.0

{
    "args": {},
    "headers": {
        "Accept": "*/*",
        "Accept-Encoding": "gzip, deflate, br",
        "Host": "httpbin.org",
        "User-Agent": "xh/0.18.0",
        "X-Amzn-Trace-Id": "Root=1-642883ff-1798083a2460e2eb34558d1d"
    },
    "origin": "91.149.234.5",
    "url": "https://httpbin.org/get"
}
```