// var main;
// var price = document.getElementById("price");

// main = function() {
//     var pubnub;

//     pubnub = PUBNUB.init({
//         publish_key: 'demo',
//         subscribe_key: 'demo'
//     });
//     pubnub.subscribe({
//         channel: 'pubnub_mailer_demo',
//         message: function(msg) {
//             console.log(msg);
//             price.innerHTML = msg;
//         }
//     });

// };

// window.onload = function() {
//     main();
// };