if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/doctoxer/MoviePalace.git /MoviePalace
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MoviePalace
fi
cd /MoviePalace
pip3 install -U -r requirements.txt
echo "Starting DVa....🔥"
python3 bot.py
