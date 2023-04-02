# Send a local GET request

## Set Up

Run basic HTTP server in the background:
```
python -m http.server 8000
```

## Action

1. Make a local GET request to nonexistent server on port 80:
   ```
   xh get :80
   ```
2. Make a local GET request to the server running on port 8000.
   ```
    xh get :8000
   ```

## Expected results

1. It should fail with an error `connection refused`
   ```
   xh: error: error sending request for url (http://localhost/): error trying to connect: tcp connect error: Connection refused (os error 111)

   Caused by:
    0: error trying to connect: tcp connect error: Connection refused (os error 111)
    1: tcp connect error: Connection refused (os error 111)
    2: Connection refused (os error 111)
   ```

2. Valid HTTP 200 OK code should be returned along with similar response:
    ```
    HTTP/1.0 200 OK
    Content-Length: 246
    Content-Type: text/html; charset=utf-8
    Date: Sat, 01 Apr 2023 17:27:58 GMT
    Server: SimpleHTTP/0.6 Python/3.11.2
    <!DOCTYPE HTML>
    <html lang="en">
    <head>
    <meta charset="utf-8">
    <title>Directory listing for /</title>
    </head>
    <body>
    <h1>Directory listing for /</h1>
    <hr>
    <ul>
    <li><a href="functional_tests/">functional_tests/</a></li>
    </ul>
    <hr>
    </body>
    </html>
    ```



