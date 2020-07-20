import React from "react";
import { AppRegistry, View, Text } from "react-360";

export default class hello_world extends React.Component {
    render() {
        return (
            <View style={{
                width: 1000,
                height: 600,
                backgroundColor: 'rgba(255, 255, 255, 0.4)',
                justifyContent: 'center',
                alignItems: 'center'
             }}>
                <View style={{
                    padding: 20,
                    backgroundColor: '#000000',
                    borderColor: '#639dda',
                    borderWidth: 2
                }}>
                    <Text style={{fontSize: 30}}>Hello World</Text>
                </View>
            </View>
        );
    }
}

AppRegistry.registerComponent("hello_world", () => hello_world);
