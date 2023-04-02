# Make a request with a custom user agent

## Action

1. Execute command:
   ```
   xh httpbin.org/get user-agent:foobar
   ```
## Expected results

The request returns a valid HTTP code and headers along with `User-Agent` variable set to `foobar`:
```
HTTP/1.1 200 OK
Access-Control-Allow-Credentials: true
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 293
Content-Type: application/json
Date: Sat, 01 Apr 2023 19:06:46 GMT
Server: gunicorn/19.9.0

{
    "args": {},
    "headers": {
        "Accept": "*/*",
        "Accept-Encoding": "gzip, deflate, br",
        "Host": "httpbin.org",
        "User-Agent": "foobar",
        "X-Amzn-Trace-Id": "Root=1-642880c6-4bb958267fe981bf610406c1"
    },
    "origin": "91.149.234.5",
    "url": "http://httpbin.org/get"
}


```