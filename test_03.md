# Send a POST request with JSON payload

## Action

1. Make a JSON file with following content:
   ```
   {
    "name": "John",
    "age": 30
   }
   ```
   and save the file as `payload.json`

2. Execute command:
   ```
   xh post httpbin.org/post -d @payload.json
   ```

3. Verify `json:` parameter in newly created `post.json` contains
   ```
   {
    "name": "John",
    "age": 30
   }
    ```

## Expected results

The request returns a valid HTTP code and headers, and the JSON payload sent in the request body is echoed back in the response:
```
HTTP/1.1 200 OK
Access-Control-Allow-Credentials: true
Access-Control-Allow-Origin: *
Connection: keep-alive
Content-Length: 510
Content-Type: application/json
Date: Sat, 01 Apr 2023 18:32:52 GMT
Server: gunicorn/19.9.0

Downloading 510B to "post.json"
Done. 510B in 0.00064s (783.02KiB/s)
```

`json:` parameter in `post.json` should contain
```
   {
    "name": "John",
    "age": 30
   }
```

## Break Down

Remove files `post.json` and `payload.json`




