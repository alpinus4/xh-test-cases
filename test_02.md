# Send a POST request with body specified by parameters

## Action

1. Execute command with specyfing string parameters:
   ```
   xh post httpbin.org/post param=super_value param2=another_value
   ```

2. Execute command with specyfing parameters with other types than string:
   ```
   xh post httpbin.org/post param:=69 param2:=[1,2]
   ```

## Expected results

The request returns a valid HTTP code and headers, and the parameters sent are echoed back in the response.

1. 
    ```
    HTTP/1.1 200 OK
    Access-Control-Allow-Credentials: true
    Access-Control-Allow-Origin: *
    Connection: keep-alive
    Content-Length: 570
    Content-Type: application/json
    Date: Sat, 01 Apr 2023 18:02:48 GMT
    Server: gunicorn/19.9.0

    {
        "args": {},
        "data": "{\"param\":\"super_value\",\"param2\":\"another_value\"}",
        "files": {},
        "form": {},
        "headers": {
            "Accept": "application/json, */*;q=0.5",
            "Accept-Encoding": "gzip, deflate, br",
            "Content-Length": "48",
            "Content-Type": "application/json",
            "Host": "httpbin.org",
            "User-Agent": "xh/0.18.0",
            "X-Amzn-Trace-Id": "Root=1-642871c8-5c993a7c15d5a931757d6764"
        },
        "json": {
            "param": "super_value",
            "param2": "another_value"
        },
        "origin": "91.149.234.5",
        "url": "http://httpbin.org/post"
    }
    ```


2.
    ```
    HTTP/1.1 200 OK
    Access-Control-Allow-Credentials: true
    Access-Control-Allow-Origin: *
    Connection: keep-alive
    Content-Length: 544
    Content-Type: application/json
    Date: Sat, 01 Apr 2023 18:04:05 GMT
    Server: gunicorn/19.9.0

    {
        "args": {},
        "data": "{\"param\":69,\"param2\":[1,2]}",
        "files": {},
        "form": {},
        "headers": {
            "Accept": "application/json, */*;q=0.5",
            "Accept-Encoding": "gzip, deflate, br",
            "Content-Length": "27",
            "Content-Type": "application/json",
            "Host": "httpbin.org",
            "User-Agent": "xh/0.18.0",
            "X-Amzn-Trace-Id": "Root=1-64287215-160e9b6224954deb064016a4"
        },
        "json": {
            "param": 69,
            "param2": [
                1,
                2
            ]
        },
        "origin": "91.149.234.5",
        "url": "http://httpbin.org/post"
    }
    ```

