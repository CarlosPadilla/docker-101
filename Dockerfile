# which one is your base universe
FROM docker/whalesay:latest

# prepare your universe
RUN apt-get -y update && apt-get install -y fortunes

# what are you gonna do with this universe-provided-energy
CMD /usr/games/fortune -a | cowsay
