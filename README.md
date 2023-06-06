## Discord validation bot

### The problem
Discord was joined by folks who hadn't bought my course by sharnig links amongst themselves

### Constraints
A way to verify email inside discord with the following constraints - 
 - We cant send a user a message (causes discord to block us)
 - We cant make a user send us a DM
 - On a public channel, we cant make the users reveal their emails while verifying


### Solution
Please watch a small clip video on youtube
The live was done with the folks who have bought the course
Please join the course to see the complete video - https://harkirat.classx.co.in/new-courses/2

## Local Setup

### Python
Make sure you have python venv module
```bash
brew install python3
#OR
sudo apt install python3-venv
```
Now setup the virtual environment
```bash
make setup
make install
```
#### Update dependencies
If any dependency change update them in the `python-script/requirments.in` and execute
```bash
make freeze
```
This will generate a `python-script/requirements.txt` and you can run `make install` again to install the added packages.
