function fib(n) {
return function(n,a,b) {

return n>0 ? arguments.callee(n-1,b,a+b) : a;
}(n,0,1);}

 function fib(n) {
var a = 0, b = 1, t;
while (n-- > 0) {

t = a;

a = b;

b += t;

console.log(a);
}
return a;} 

var fib = (function(cache){

return cache = cache || {}, function(n){



if (cache[n]) return cache[n];



else return cache[n] = n == 0 ? 0 : n < 0 ? -fib(-n)





: n <= 2 ? 1 : fib(n-2) + fib(n-1);

};})(); 

function Y(dn) {

return (function(fn) {



return fn(fn);

}(function(fn) {



return dn(function() {





return fn(fn).apply(null, arguments);



});

}));}var fib = Y(function(fn) {

return function(n) {



if (n === 0 || n === 1) {





return n;



}



return fn(n - 1) + fn(n - 2);

};});

function* fibonacciGenerator() {

var prev = 0;

var curr = 1;

while (true) {



yield curr;



curr = curr + prev;



prev = curr - prev;

}}var fib = fibonacciGenerator();

