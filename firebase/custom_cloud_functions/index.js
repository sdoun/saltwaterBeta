const admin = require("firebase-admin/app");
admin.initializeApp();

const createCustomToken = require("./create_custom_token.js");
exports.createCustomToken = createCustomToken.createCustomToken;
const createNaverToken = require("./create_naver_token.js");
exports.createNaverToken = createNaverToken.createNaverToken;
