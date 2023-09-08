# Quick Start Guide
A Library to store bookmarks for comics, webnovels and animes.
You can access the demo or use it permanently [here](https://public.tellarin.dev).

![Hosting Badge](https://img.shields.io/badge/Hosting-Public%20%7C%20Self%20Hosted%20%7C%20Docker-blue)
![Development Status Badge](https://img.shields.io/badge/Development%20Status-Active-green)

> *The Tianyi Ge, translated as Tianyi Pavilion or Tianyi Chamber, is a library and garden located in Ningbo, Zhejiang Province, China.[1] Founded in 1561 by Fan Qin during the Ming dynasty, it is the oldest existing private library in China.*
>   \- Wikipedia

Welcome to Tianyi - Docker Edition. 
If you don't have access to a server (VPS or NAS VM), I am maintaining this Docker image for use on your computer (or a NAS). 

If you want to see what it looks like in action, you can access the demo at the link above.

# Installation

[Docker Desktop](https://www.docker.com/products/docker-desktop/) makes things easier to manage, and installs the Docker Engine for you as well, so I recommend downloading it.

Once you're done, you can proceed to install Tianyi:
- Cloning the repo
- Downloading the requirements and starting the Library

## Clone / Download Tianyi

Where you want on your system (your Documents folder is as good of a place as any), download the GitHub repository:  

You can [download the code](https://github.com/xTellarin/tianyi-docker/releases/latest/download/tianyi-docker.zip)

Or clone the repo for easy updates:
``` bash
git clone https://github.com/xTellarin/tianyi-docker.git
```

## Running the app

Inside your `tianyi` folder, you'll find two `start` scripts to start Tianyi.
On macOS and Linux systems, open a terminal and run 
```bash
bash ./start.sh
```
On Windows, double click the `start.bat` file.


Alternatively, open a terminal (`cd`) to the location where you downloaded / cloned Tianyi. Then install and run the app with:
```bash
docker compose up
```

Congratulations, you are now running Tianyi! Just head to tianyi.tellarin.dev to access your instance.

By default, Tianyi will start in the background. It's super efficient (using less than 1% of one core) so you can leave it running at all times. To stop it, use your Docker Desktop app to stop the container or open a terminal inside your folder and run `docker compose stop`.
To start Tianyi in the future, just run the script again.


# Usage
When you head to Tianyi on your browser, you'll be greeted with the login page.
Go ahead and click *Create account*. Choose a username and password. The case (capital letters) doesn't matter for the username, so *Tellarin* and *tellarin* are the same. I prefer using a capital letter when I log in, but that's entirely up to you.
Once you've logged in, you'll see the splash / landing page. Not much to see here, so click the *Library button*. 

Welcome to Tianyi. The Library is quite sparse to say the least, but not for long. Let's add your first bookmark. Click *Add a new record*.
Fill in the fields with the details of the comic / novel / anime you'd like to save.  Note that 'Team' refers to the Author or the Translator. Which one you want to use is up to you. You can filter on this field too so choose wisely, and most importantly, stay consistent. You will always be able to change it later if you need. Click *Submit* when you're done.

Congratulation! Your first entry now populates your library. Notice how the 'Last Read On' field is automatically filled with today's date. It's convenient to see how much time has passed since you last read / watched your bookmark. 
In a few weeks, once you've caught up again, you'll probably want to update the chapter at which you stopped at. While you can do so by clicking the *Edit* button in the 'Edit info' column, a much quicker way to do it is by inputting the chapter number next to *Last Chapter read* at the top. Then, click *Update* on the record you'd like to update. That's it!

Finally, remember that you can also filter by tag and team using the dedicated fields at the top. As your library fills up with all sorts of bookmarks, you'll appreciate this feature. 

# Other notes / FAQ

You are now ready to use Tianyi. If you want to dive deeper on customization, I've got more (illustrated) documentation for you [on my blog](https://blog.tellarin.dev/tianyi).

**Q: The app doesn't start: _Error starting userland proxy: listen tcp4 0.0.0.0:80_**

A: That means that your port 5050 is already in use by another webserver. The same can happen with port 3306 for MySQL. In that case, open the `compose.yaml` file and change the port bindings on lines 9 and 23. 
For example, change `5050:80` to `8050:80` to free up port 80. Remember to point your browser to http://localhost:8050 if you do that!

**Q: Do you have an image on the Docker Hub?**

A: Yes, [I do](https://hub.docker.com/r/tellarin/alexandria/tags). You can use `docker pull tellarin/alexandria:[tag]` to pull them, where `[tag]` is either **arm64** (Apple Silicon Macs and Raspberry Pis and equivalents) or **amd64** (Intel and AMD cpus). 
> **NOTE:** unless you cannot run `docker compose`, there is no reason to use this method as you will have to deal with the MySQL bindings yourself!

**Q: Why are you sending me to your website? I thought I was hosting Tianyi locally?**

A: You are. When you visit tianyi.tellarin.dev, you browser is pointing to your Docker container. That's just a fancy and more memorable way to access Tianyi.

**Q: I've got other questions, how can I reach you?**

A: You can send me a message on Discord (Tellarin#0069) or [send me an email](mailto:hello@tellarin.dev). You can also use the Discussions tab at the top of this page. That's what it's made for :)

Feel free to submit Pull Requests if there's something you'd like to improve, an Issue if something is wrong (read the Installation paragraph thoroughly first) or create a new Discussion for other things you'd like to share. 

Thank you for using Tianyi!

\- Tellarin