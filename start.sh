if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/hardeepsingh62/All-Url-Uploader.git /All-Url-Uploader
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /All-Url-Uploader
fi
cd /LazyPrincess
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
