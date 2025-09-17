mkdir -p text2url/text2url && \
touch text2url/text2url/__init__.py text2url/text2url/cli.py text2url/setup.cfg text2url/pyproject.toml text2url/setup.py text2url/README.md && \
cat > text2url/setup.cfg <<'EOF'
[metadata]
name = text2url
version = 0.1.0
description = Serve a file or stdin via Cloudflare Tunnel
long_description = file: README.md
long_description_content_type = text/markdown
author = Your Name
author_email = your@email.com
url = https://github.com/efxtv/text2url
license = MIT
classifiers =
    Programming Language :: Python :: 3
    License :: OSI Approved :: MIT License
    Operating System :: OS Independent

[options]
packages = find:
python_requires = >=3.7

[options.entry_points]
console_scripts =
    text2url = text2url.cli:main_entry
EOF
cat > text2url/pyproject.toml <<'EOF'
[build-system]
requires = ["setuptools>=61.0"]
build-backend = "setuptools.build_meta"
EOF
cat > text2url/setup.py <<'EOF'
from setuptools import setup
if __name__ == "__main__":
    setup()
EOF
cat > text2url/README.md <<'EOF'
# text2url

Serve a file or stdin input via Cloudflare Tunnel.
EOF
# Copy your current app.py into cli.py
cp app.py text2url/text2url/cli.py


# Modify run.sh to your tool
# sed -i 's#text2url#appname#g' run.sh
# bash run.sh

# nano ~/.pypirc
<!--
[pypi]
  username = __token__
  password = TOCKEN FROM https://pypi.org/manage/account/token/
comment
-->

# Change in setup.cfg in project home
# nano setup.cfg
# name = text2url #change
# version = 0.1.0 setup.cfg #change

# pip install build twine
# python3 -m build
# pip install dist/text2url-0.1.0-py3-none-any.whl
# twine upload dist/* --verbose
