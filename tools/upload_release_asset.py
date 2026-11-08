import os
import sys
import time
import subprocess
import re
import urllib.request
import urllib.error

def get_token():
    token = os.environ.get("GITHUB_TOKEN")
    if not token:
        try:
            url = subprocess.check_output(["git", "config", "--get", "remote.origin.url"], text=True)
            m = re.search(r":([^@]+)@github\.com", url)
            if m:
                token = m.group(1)
        except Exception:
            pass
    return token

RELEASE_ID = 438186276
REPO = "zequielbogado-alt/Spoken"

def upload_asset(filepath, name=None):
    token = get_token()
    if not name:
        name = os.path.basename(filepath)
    size = os.path.getsize(filepath)
    print(f"Uploading {name} ({size / (1024*1024):.2f} MB)...")
    url = f"https://uploads.github.com/repos/{REPO}/releases/{RELEASE_ID}/assets?name={name}"
    
    headers = {
        "Authorization": f"Bearer {token}",
        "User-Agent": "TuWoW-Uploader",
        "Content-Type": "application/zip",
        "Content-Length": str(size)
    }

    t0 = time.time()
    with open(filepath, "rb") as f:
        req = urllib.request.Request(url, data=f, headers=headers, method="POST")
        try:
            with urllib.request.urlopen(req, timeout=1200) as resp:
                elapsed = time.time() - t0
                print(f"SUCCESS: {name} uploaded in {elapsed:.1f}s ({resp.status})")
                return True
        except urllib.error.HTTPError as e:
            print(f"HTTP Error {e.code}: {e.reason}")
            try:
                print(e.read().decode("utf-8", errors="ignore"))
            except Exception:
                pass
            return False
        except Exception as e:
            print(f"Upload failed: {e}")
            return False

if __name__ == "__main__":
    for path in sys.argv[1:]:
        upload_asset(path)
