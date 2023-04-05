import unittest
import subprocess
import json
import os.path

# docker run -p 80:80 kennethreitz/httpbin
class TestHttpRequests(unittest.TestCase):
    def test_get(self):
        output = subprocess.getoutput("xh localhost/get")
        response = json.loads(output)
        self.assertEqual(response["headers"]["User-Agent"], "xh/0.18.0")

        output = subprocess.getoutput("xh localhost/get user-agent:foobar")
        response = json.loads(output)
        self.assertEqual(response["headers"]["User-Agent"], "foobar")
    
    def test_post(self):
        output = subprocess.getoutput("xh localhost/post id==5 name=jan")
        response = json.loads(output)
        data_response = json.loads(response["data"])

        self.assertEqual(response["args"]["id"], '5')
        self.assertEqual(data_response["name"], "jan")

    def test_download(self):
        file_name = "res.json"
        subprocess.getoutput(f"xh -d httpbin.org/json -o {file_name}")
        file_exists = os.path.isfile(file_name)
        os.remove(file_name)
        self.assertTrue(file_exists)
        

if __name__ == "__main__":
    unittest.main()


