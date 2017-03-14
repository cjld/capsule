ECMAscript

*   arguments: function argument
*   Rest parameters: `function (a,b, ...args) {}`
*   De-structuring assignment: `[a, b, ...rest] = [1, 2, 3, 4, 5]`

# debug
*   debug: `node debug main.js`
*   `.help`
*   `debugger`
*   node-inspector
*   node-inspector

# basic
*   for of: `for ... of ...`
*   label: `label: continue`, must before loop
*   what new actually do:
    `a = new myclass()`
    *   a = Object.create(myclass.prototype)
    *   myclass.call(a, ...args)
*   spread operator `...args`
*   string is *immutable*
*   List.map will change map

# meta program

## `getPrototypeOf`
```javascript
```
*   `apply` for set args array

## async
*   `process.next-tick`, delay current function call

# prototype
prototype is used for memory saving
set object prop won't change prototype obj

# Object

*   Object.keys
*   `Object.getOwnPropertyNames`: including ones that are not enumerable.
*   `Object.getOwnPropertyDescriptor(Object, 'assign')`

# function
*   this means global when not new
*   no var means global value

-----------
#livescript
----------
# Command Line Examples
Watch a directory, compile on change into an output directory: lsc -wco output src
# example
<http://learnxinyminutes.com/docs/livescript/>
# Command
^J linefeed

# basic
*   Assignment: `:=`
*   base: `6~12`
*   string same with bash
*   Bitwise: `14 .&. 9   #=> 8`
*   Chained comparison: `1 < 2 < 4`, `1 < 2 == 4/2 > 0`
*   Existence: 'xxx?'
*   Property copy:
    *   `<<<`: copy own
    *   `<<<<`: copy all
*   import: `import require \prelude-ls`
*   `export`, `export class`
*   require:
    ```
    require! {
        fs: filesystem
        'prelude-ls': {map, id}
        path: {join, resolve}:p
    }
    ```
*   `.=`
*   Cascades:
    ```
    a = [2 7 1 8]
      ..push 3
      ..shift!
      ..sort!
    a #=> [1,3,7,8]

    document.query-selector \h1
      ..style
        ..color = \red
        ..font-size = \large
      ..inner-HTML = 'LIVESCRIPT!'
  ```

# string and array
```
<[ a b c ]> === [\a \b \c] === ['a', 'b', 'c']
```

# function
*   `add = (left, right) -> left + right`
    *=>* not work
*   `func!`: Functions which take no arguments are called with a bang!
*   `double-minus-one = (- 1) . (* 2)`
*   `p = add3 1,2,_` *_* to mark
*   `-->`: for curried functinon
*   `!->`: suppress auto return
*   callback: set test-cb.ls
*   *&* for arguments

# clone
`^^` to clone object

# raw javascript
``console.log('aaa')``

# oop
*   `super!`, `super ...`

-------
# npm
---------
npm init
npm install <pkg> --save
npm list -g
npm help: npm man page
npm instal <pkg> --save:
    save to dependency
npm install : install local package.json dependency
npm run script

------------
# gulp
----------


----------
#semantic ui
----------
`class ui` to mark the DOM to be infect

`justified header`, same alignment between each phase


-------
------
ORM: mongoose
 nodemon for auto ref
 jwt.io

# express

## app
*   `app.all` match app request
*   `app.param`, match url '/id/:id'
*   `app.route(path)`, use to handler different HTTP verb
*   different between `all` and `use` is use trigged every prefix
*   express.static

## req
*   `req.baseUrl` `req.originalUrl`
*   see test-bp.js

## res
*   `res.cookie(name, value [, options])`
*   `res.attachment('path/to/logo.png');` download
    `res.download`

## express-session
*   req.session



# ps
*   inherit from                <https://nodejs.org/docs/v0.4.0/api/http.html#http.ServerRequest>
*   render raw html
    `app.engine('.html', require('ejs').renderFile);`

# mongoose
## Middleware
```
UserSchema.pre('save', function (next) {
  email(this.email, 'Your record has changed');
  next();
});
```
see <./test-mongoose.ls>

`db.listCollections!.to-array -> console.log &1`

*   bson
    *   mongorestore -d <database> -c <collection>
    *   bsondump <bson-file>

#ps
*   old lock file: /data/db/mongod.lock. probably means unclean shutdown
*   different find between `local:email:email` and `'local.email':email`

## npm install mongodb kerberos error
`../lib/kerberos.h:5:27: fatal error: gssapi/gssapi.h: No such file or directory`
sudo apt-get install libkrb5-dev

# misc utils
## nodemon
nodemon --delay 10 server.js
nodemon --exec lsc server.ls

# bower
front end package manager
*   bower install

## ps
*   react-roter history dependency problem
    npm install history@1.13.1 react-router@latest

# ES6
*   import are hoisted, can not conditionally load a module
*   async, return a function with argument dispatch, and run it


-----------
# react
-----------
*   `this.props` from `<lala prop1=xxx prop2=yyy />`
*   `setState`: do not remove state not in next-state, `replase-state` do this
*   `forceUpdate`: self explanation

## alt
### action
*   You return the data from your action that you wish to dispatch
*   generateActions generate identity action function

## ps
*   `toastr.error`, log a error message
    <https://github.com/CodeSeven/toastr>
*   `event.preventDefault` prevent default action happen
    <http://www.w3schools.com/jquery/event_preventdefault.asp>
*   history
    *   pushState( state-object, url )
        <https://developer.mozilla.org/en-US/docs/Web/API/History/pushState>
    *   can affect react router
*   `jqXHR`: superset of XMLHTTPRequest
*   action not return will not triggle store


-------
# async
-------

*   why we need async <http://www.sebastianseilund.com/nodejs-async-in-practice>
*   `waterfall` for handle error

--------
# trick
---------
*   chrome : ctrl+F5 force reload

# to learn

*   Font Awesome
*   Moment.js time display
webpack
<http://www.toptal.com/react/navigating-the-react-ecosystem>
<http://material-ui.com/>
<http://elemental-ui.com/>
<https://egghead.io/lessons/react-react-in-7-minutes>

cojs
redux

# socket.io

# broadcast
different between broadcast and io.sockets
io.sockets send to all, broadcast send expect self

# reference
[create-a-character-voting](http://sahatyalkabov.com/create-a-character-voting-app-using-react-nodejs-mongodb-and-socketio/)
[MIME Types List](http://www.freeformatter.com/mime-types-list.html)
[使用json web token](http://www.haomou.net/2014/08/13/2014_web_token/)
[understanding-passportjs](http://toon.io/understanding-passportjs-authentication-flow/)[Authenticate a Node.js API with JSON Web Tokens](https://scotch.io/tutorials/authenticate-a-node-js-api-with-json-web-tokens)
[Easy Node Authentication: Setup and Local](https://scotch.io/tutorials/easy-node-authentication-setup-and-local)
