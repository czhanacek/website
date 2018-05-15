# /bin/bash
# compress images
trimage --directory=assets

# this rsync command syncs everything locally to the server
rsync -avhz . czhanacek@czhanacek.com:personalSite/personal/ --delete
