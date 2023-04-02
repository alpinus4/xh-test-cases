# Send a GET request with custom headers for authentication

## Action

1. Execute unathorized request:
   ```
   xh get https://httpbin.org/bearer
   ```
2. Verify HTTP code 401 unathorized. 
3. Execute request with custom header for authentication.
   ```
   xh get https://httpbin.org/bearer -H 'Authorization: Bearer mytoken'
   ```
4. Verify HTTP code 200.

## Expected results

The requests return a valid HTTP code and headers.
Unathorized request returns HTTP code  401:
```
HTTP/2.0 401 Unauthorized
access-control-allow-credentials: true
access-control-allow-origin: *
content-length: 0
content-type: text/html; charset=utf-8
date: Sat, 01 Apr 2023 18:54:56 GMT
server: gunicorn/19.9.0
www-authenticate: Bearer
```
while authorized with header returns 200 OK:
```
HTTP/2.0 200 OK
access-control-allow-credentials: true
access-control-allow-origin: *
content-length: 51
content-type: application/json
date: Sat, 01 Apr 2023 18:54:37 GMT
server: gunicorn/19.9.0
```