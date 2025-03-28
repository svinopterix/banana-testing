# Testing

## How to run
To execute the app do the folowing:
1. Under _Actions_ tab identify the build needed, make sure it's successfull.
2. Click on the build name and under _build_nginx_docker summary_ section you will find a docker command to execute:
```
docker run -p 80:80 svinopterix/banana-testing-svinopterix:<version>
```
Run the command
3. Check that the nginx output:
```
curl http://localhost
```

## Why
This is a simple task that should take no more than a few hours to complete. Its representing an every-day task that you might be tasked to do.

There are many ways to acheive it; we're looking to see simplicity, reuasbility and that you really understand what you are doing more than anything else.
## What
In this repository there is a simple C++ code that would break a single line to multiple lines. The end result would having an nginx instance running in a docker container that would read from the output of the "message" file and present it to users when they log in.

__Don't create an online instance__, a dockerfile that can handle this is more than enough, but we would need instructions how to set it up and run it.
## How
___Create your own fork___ with a combination of git actions, scripting and simple text instructions are enough.

## Proposed flow
```
                 ┌ A container + git and build tools. ┐            ┌ nginx container ┐
        ┌────────┴──┐  ┌───────────┐  ┌─────────┐  ┌──┴──────┐  ┌──┴─────────────────┴──┐
push ▷──┤ git clone ├──┤ configure ├──┤ compile ├──┤ execute ├──┤ browser shows message │
        └───────────┘  └───────────┘  └─────────┘  └─────────┘  └───────────────────────┘
```
## 
