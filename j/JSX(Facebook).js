var React = require('react');

var HelloWorld = function() {
    return <span>Hello World</span>;
};
HelloWorld.displayName = 'HelloWorld';

console.log(React.renderToString(<HelloWorld />));
