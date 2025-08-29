from flask import Flask, render_template_string
import redis
import os

app = Flask(__name__)

# Connect to Redis
redis_host = os.getenv("REDIS_HOST", "redis")
redis_port = int(os.getenv("REDIS_PORT", 6379))
r = redis.Redis(host=redis_host, port=redis_port, db=0)

# Initialize counter if not exists
if not r.exists("counter"):
    r.set("counter", 0)

TEMPLATE = """
<!doctype html>
<html>
<head>
    <title>Counter App</title>
</head>
<body>
    <h1>Counter Value: {{ counter }}</h1>
    <form action="/" method="post">
        <button type="submit">Increment</button>
    </form>
</body>
</html>
"""

@app.route("/", methods=["GET", "POST"])
def index():
    if app.request.method == "POST":
        r.incr("counter")
    counter = int(r.get("counter"))
    return render_template_string(TEMPLATE, counter=counter)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
