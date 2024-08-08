const functions = require("firebase-functions");
const admin = require("firebase-admin");
const fetch = require("node-fetch");
// To avoid deployment errors, do not call admin.initializeApp() in your code

admin.initializeApp();

exports.createNaverToken = functions
  .region("us-central1")
  .https.onCall((data, context) => {
    const user = data.user;
    // Write your code below!
    const client_id = "1ctb9frHDUaeRczLmGqT";
    const client_secret = "UlWvhBmi7t";
    const rederection_uri =
      "https://salt-water-beta-ver1-4dujup.flutterflow.app";

    // Write your code above!
  });
