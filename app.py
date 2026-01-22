from http.server import SimpleHTTPRequestHandler
import socketserver

PORT = 5000

print(f"Serving POC at http://localhost:{PORT}")
Handler = SimpleHTTPRequestHandler

with socketserver.TCPServer(("", PORT), Handler) as httpd:
    httpd.serve_forever()
