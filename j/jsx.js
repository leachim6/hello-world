var React = require('react');

var HelloWorld = React.createClass({
    displayName: 'HelloWorld',
    render: function() {
        return (
            <span>Hello World</span>
        );
    }
});

console.log(React.renderToString(<HelloWorld />));
