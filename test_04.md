# Send a PUT request with file payload

## Action

1. Create a txt file with following content:
   ```
   ABCDEFGHIJKL
   ```
   and save the file as `file.txt`

2. Execute command:
   ```
   xh put https://httpbin.org/put -F 'file=@file.txt'
   ```

3. Verify the file is echoed back in the response.

## Expected results

The request returns a valid HTTP code and headers, and the file payload sent in the request body is echoed back in the response:
```
HTTP/2.0 200 OK
access-control-allow-credentials: true
access-control-allow-origin: *
content-length: 514
content-type: application/json
date: Sat, 01 Apr 2023 18:25:59 GMT
server: gunicorn/19.9.0

{
    "args": {},
    "data": "{\"file\":\"ABCDEFGHIJKL\\n\"}",
    "files": {},
    "form": {},
    "headers": {
        "Accept": "application/json, */*;q=0.5",
        "Accept-Encoding": "gzip, deflate, br",
        "Content-Length": "25",
        "Content-Type": "application/json",
        "Host": "httpbin.org",
        "User-Agent": "xh/0.18.0",
        "X-Amzn-Trace-Id": "Root=1-64287737-0fae66d84c731ce970f5195c"
    },
    "json": {
        "file": "ABCDEFGHIJKL\n"
    },
    "origin": "91.149.234.5",
    "url": "https://httpbin.org/put"
}
```

## Break Down

Remove file `file.txt`



