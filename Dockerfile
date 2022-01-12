FROM paman7647/amanpandey:speedo-buster-3.9
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y ffmpeg git
RUN pip install -r https://raw.githubusercontent.com/StarkBug/StarkBugBot/master/requirements.txt
COPY . .
COPY ./Start.sh .
ADD ./Start.sh .
CMD ["/bin/bash","Start.sh"]
# Team Eiva 
