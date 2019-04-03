
// Uncomment this line to test the args[0]->IsNullOrUndefined() assert failure in Runtime.mm
//myFunc(null);

var base = require("./base"),
   regexp = require("./regexp");

BenchmarkSuite.RunSuites({
   NotifyStart : name => console.log(`Starting suite ${name}\n`),
   NotifyError : (name, result) => console.log(`Error: name: ${name}: ${result}\n`),
   NotifyResult : (name, result) => console.log(`Result of ${name}: ${result}\n`),
   NotifyScore : score => console.log(`Octane benchmark score: ${score}`)
}, []);
