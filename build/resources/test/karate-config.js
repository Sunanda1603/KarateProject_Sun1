function fn()
{
var config =
{
baseURL: "https://reqres.in",
listUsers: "/api/users?page=2"
}
karate.log("From karate-config.js");
karate.configure("ssl",false);
return config;
karate.configure("afterScenario",function(){karate.log('after scenario inside config');});
}

