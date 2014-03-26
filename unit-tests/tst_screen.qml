import QtQuick 2.0
import QtTest 1.0

import "utils.js" as Utils

import "../main-app/qml/main-app"

Item {
	width: 100
	height: 100

	MainWindow {
		id: testee

		width: 20
		height: 20
	}

	TestCase {
		name: "Screen"
		when: windowShown

		SignalSpy {
			id: spy
			target: testee
		}

		function init() {
			spy.clear();
		}

		function test_the_screen_exits_on_click() {
			spy.signalName = "clicked";
			verify(spy.valid);

			mouseClick(testee, 5, 5);

			compare(spy.count, 1);
		}
	}
}
