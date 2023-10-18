This is a small streamlit PROOF-OF-CONCEPT application that uses langchain
to connect users request with openai so it can translate them to SQL queries,
run those queries in a sqlite pokemon database, and show the results in a user-friendly manner.

To run this app you need:
- A linux system
- Docker
- An OpenAI api key

Instructions:
- Modify the "a_env_vars.py" file to include your OpenAI API key
- Run ./start.sh
- Open the browser and go to http://localhost:8080
- Enjoy!

BASED ON:
- https://www.youtube.com/watch?v=yz1CaFMTevk