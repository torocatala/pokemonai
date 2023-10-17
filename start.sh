#! /bin/bash

docker rm -f appelo 2>/dev/null
docker build -t pythonstreamlit .
docker run --rm -d -v $(pwd)/:/app -p 0.0.0.0:8080:8080 --name=appelo pythonstreamlit
echo ""
echo ""
echo ""
echo "Open http://localhost:8080 in your browser"
echo ""
echo ""