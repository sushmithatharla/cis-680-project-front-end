# cis-680-project-front-end

# STEPS TO RECREATE THE PROJECT

# 1 Google cloud platform

# 1.1 create a project in google cloud and create a vm instance in compute engine. and make sure you use the same project when you connect the other products to the project.

# 2 Dialogflow

# 2.1 create dialogflow account and create one entity/ agent with name gvsuchatassistant and create intents for the project which we are using. Add a few intents with the training phrase and add the response/s fit for the question.

# 2.1 get the key to the service account used by the dialogflow for authentication. Keep the file with you for future purposes.

# 3 Firebase

# 3.1 create a firebase account in gcp.

# 3.2 create a database in firebase and create a collection. As of now it is empty as there is no data attached to it.

# 3.3 download the permissions document from the firebase account useful for connections to firebase from node js code.

# 4 Back end

# 4.1 Create a node project in your loca and make sure you assign a port to it and install all the packages needed for it.

# 4.2 Create a function in index.js and add an endpoint to post the question which we are going to as in the front end.

# 4.3 when the end point is hit from the front end using an endpoint the function with the endpoint in back end is triggered and the code runs to get the data from dialogflow and also saved the data/ question to the firebase database. We use the service account for dialogflow and firebase to help out with the connections.

# 4.4 also make sure to add cors to the service as the api will fail when it is hit form the front end

# 4.5 make sure to install firebase-admin and also firebase functions to make sure the database connection set up is good.

# 4.6 in the endpoint function in index.js make sure to return the response from the dialogflow in the form of json.

# 5 Cloud function

# 5.1 create a cloud function in google cloud platform and name the function name connected to your application

# 5.2 in the trigger section which creating the cloud function make sure to select “Allow unauthenticated invocations” option as we do not need authentication right now.

# 5.3 you can add any runtime environment variables needed which is needed for the back-end project.

# 5.4 once you hit next you can see the code in inline editor. Start making changes in the index.js file by copying your index.js file from the back-end project. Also make sure to create the files here and copy over the code from the back end project so that it looks similar to the structure and code as well.

# 5.5 after done with all the code changes hit deploy and our service will be ready to use from the front end.

# 5.6 make sure to wait for the function to be deployed and use it

# 6 Front end

# 6.1 create a react front end project using npm. Also install the packages needed for the project.

# 6.2 create a few pages/ components and implement the UI pages in it. The front-end app is totally based on personal opinion. Any chat application can work the similar way.

# 6.3 make sure you implement a connection to firebase using the service account and use the packages needed for firebase.

# 6.4 Create a Docker file to build this front end in google cloud using cloud run.

# 6.5 Push the front-end changes to a gut hub account which can be accessed from google cloud.

# 6.6 also use the function created in the previous section (cloud function). Use the end point and make a post call to the function using the question user is typing in the input filed. Also bind the response to the page from the api.

# 7 Cloud Run

# 7.1 create a service in cloud run in google cloud platform.

# 7.2 select Continuously deploy new revisions from a source repository option when creating and click “set up with cloud build”.

# 7.3 inside the set up with cloud build select GitHub and select the repository we have created in git hub for the front end. (Make sure you enable the apis related to source repository and login to GitHub through google cloud when asked.)

# 7.4 Click Create and the job is good to go. This job triggers whenever a any code is pushed to the repo where front end code is located.
