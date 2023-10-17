FROM python:3.11-bookworm

#base
RUN apt update && apt install -y build-essential gcc clang clang-tools cmake python3 cppcheck valgrind afl gcc-multilib
RUN pip install --upgrade pip

#arrow
RUN apt install -y -V ca-certificates lsb-release wget
RUN wget https://apache.jfrog.io/artifactory/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb
RUN apt install -y -V ./apache-arrow-apt-source-latest-$(lsb_release --codename --short).deb
RUN apt update
RUN apt install -y -V libarrow-dev

#streamlit
RUN pip install streamlit
RUN pip install streamlit-chat
RUN pip install openai
RUN pip install langchain
RUN pip install langchain-experimental

COPY . /app

WORKDIR /app

CMD STREAMLIT_SERVER_PORT=8080 streamlit run c_front_end.py