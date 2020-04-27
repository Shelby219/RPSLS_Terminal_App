echo “Welcome to ROCK PAPER SCISSORS SPOCK LIZARD the Terminal Game.”
echo “Required files will be downloaded from Github”
git clone “https://github.com/Shelby219/CA_Terminal_App_RPSLS.git”
cd CA_Terminal_App_RPSLS/src
echo “Required gems will now be installed”
bundle install
echo “Launching the application...”
ruby main.rb