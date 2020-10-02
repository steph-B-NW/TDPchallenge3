# Task
 
Your task is to create a Jenkins pipeline that takes this app 
>>(https://gitlab.com/qacdevops/nbs-challenge-3) 
and on every push to the repository, tests the app, creates the docker image and pushes the image to a Nexus repository.
 
## Stretch Goals
 
1. Try to give different versions to each image pushed to the Nexus repository.
2. Create a second pipeline that is triggered every 15 mins, checks if the running image is up to date and if not, deploys the latest image in a container.
 
### Submission
 
To submit this challenge you should **create a Git repository** containing AT LEAST any **Jenkinsfiles** and **scripts** you create.
 
You are also expected to make a README.md file and to fill this README with information about this challenge. It should contain the following headers.
 
## What was the challenge?

- Create a pipeline that is designed to automate a test function within Jenkins that will build everytime a change is made, and create an artifact from that change to be stored in a repository. 
- Stretch, if possible, to automating a second pipeline that would automatically poll and update the live build to the most current version, as well as tagging each updated version in the artifact history.

## How I expected the challenge to go.

Honestly I was concerned, this has been a challenging week, as I'm still not confident with how the services are designed to interact with each other and where to look when problems that I haven't solved before occur. I know this is all part of the learning process, but I definitely hit a lot more walls this week than the previous two weeks.

## What went well?

the jenkins file pipeline, as well as the push and pull scripts so that I could interact with nexus, as well as using the repository to interact with Jenkins. I was quite pleased that the main process of "create pipeline, create scripts, have jenkins run them using a bash shell" is something I understand. I was able to overcome a few problems myself such as using docker to build a container for the python app to run in, instead of attempting to ask jenkins to run the app which failed at first.

## What didn't go as planned?

I ran into a permissions issue with jenkins that I could not overcome using the chmod command as jenkins was getting a *permission denied* error whenever I was attempting to run the **run.sh** file that would test the app. Holly was extremely helpful with this, as she pointed out that I might need to login to nexus as jenkins in order be to able physically push the images up, as well as swapping my **build_images** pipeline stage with my **run.sh** stage, in order to ensure the dependencies were fully loaded. This was something that I might have managed to work out myself eventually (given enough time) as the thought crossed my mind, but I still don't feel like I have enough experience working with the techniques to recognise these errors independently yet.

She also helped me to fix the run.sh file to correctly use the **pyapp** that we needed to use in the root, which is not something I'd have even know where to start trying to make work. 

## Possible improvements for future challenges.

as it goes, my understanding of the structure of the technique was fine. I understood what I had to do and the basic building blocks and what resources I needed to go and revise to apply to this structure. The issue came with the unexpected errors, the extras in the process that will, in future endeavours, come through the experience of having known to watch for the speedbumps. I feel like I just need to take a few more notes  that I can refer back to, just to remind myself of the simple extra steps in the process.
