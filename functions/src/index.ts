import * as functions from "firebase-functions";

const rFunctions = functions.region("asia-east2");

export const helloWorld = rFunctions.https.onRequest((request, response) => {
  response.send("Hello from Firebase in a flutter project!");
});
