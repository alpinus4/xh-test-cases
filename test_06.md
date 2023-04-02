# Save response to a txt file

## Action

1. Execute command:
   ```
   xh get https://httpbin.org/json -o response.txt
   ```
## Expected results

The requests return a valid HTTP code and headers.
File `response.txt` is created with contents:
```
{
  "slideshow": {
    "author": "Yours Truly", 
    "date": "date of publication", 
    "slides": [
      {
        "title": "Wake up to WonderWidgets!", 
        "type": "all"
      }, 
      {
        "items": [
          "Why <em>WonderWidgets</em> are great", 
          "Who <em>buys</em> WonderWidgets"
        ], 
        "title": "Overview", 
        "type": "all"
      }
    ], 
    "title": "Sample Slide Show"
  }
}

```

## Break Down

Remove file `response.txt`