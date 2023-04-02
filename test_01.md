# Send an internet GET request

## Action

1. Execute command:
   ```
   xh get <address>
   ```
   for the following addresses instead of `<address>` field:
   - `www.google.com`
   - `www.pg.edu.pl`
   - `reddit.com`

## Expected results

Requests for every one of the provided addreses return valid HTTP code and headers along with the content matching outputted `Content-Length` parameter.

Examples:

`www.google.com`
```
HTTP/1.1 200 OK
Cache-Control: private, max-age=0
Content-Encoding: gzip
Content-Length: 6473
Content-Security-Policy-Report-Only: object-src 'none';base-uri 'self';script-src 'nonce-hKD_9uqd9xIeJc0YXP7tmg' 'strict-dynamic' 'report-sample' 'unsafe-eval' 'unsafe-inline' https: http:;report-uri https://csp.withgoogle.com/csp/gws/other-hp
Content-Type: text/html; charset=ISO-8859-1
Date: Sat, 01 Apr 2023 17:18:52 GMT
Expires: -1
Server: gws
Set-Cookie: AEC=AUEFqZczYXBpuNQtf80lBCoGpjMZOKYzlvQBwJqiRILTOYvIw_2iFS7gzA; expires=Thu, 28-Sep-2023 17:18:52 GMT; path=/; domain=.google.com; Secure; HttpOnly; SameSite=lax
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 0
<!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="pl"><head>
...
```

`www.pg.edu.pl`
```
HTTP/1.1 302 Found
Cache-Control: no-cache
Content-Length: 0
Location: https://www.pg.edu.pl/
```

`reddit.com`
```
HTTP/1.1 301 Moved Permanently
Accept-Ranges: bytes
Cache-Control: private, max-age=3600
Connection: close
Content-Length: 0
Date: Sat, 01 Apr 2023 17:21:09 GMT
Location: https://reddit.com/
Nel: {"report_to": "w3-reporting-nel", "max_age": 14400, "include_subdomains": false, "success_fraction": 0.2, "failure_fraction": 0.2}
Report-To: {"group": "w3-reporting-nel", "max_age": 14400, "include_subdomains": true,  "endpoints": [{ "url": "https://w3-reporting-nel.reddit.com/reports" }]}, {"group": "w3-reporting", "max_age": 14400, "include_subdomains": true, "endpoints": [{ "url": "https://w3-reporting.reddit.com/reports" }]}
Retry-After: 0
Server: snooserv
Via: 1.1 varnish
X-Content-Type-Options: nosniff
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
```



