slate.config("orderScreensLeftToRight", true);

var full = {
    "x":        "screenOriginX",
    "y":        "screenOriginY",
    "width":    "screenSizeX",
    "height":   "screenSizeY"
};

function op(operation, options, screen) {
    return slate.operation(operation, _.extend(options, { screen: screen }));
}

function d(screen) {
	return {
		"operations":  [function (w) {
			w.doOperation(op("move", full, screen));
		}],
		"ignore-fail": true,
		"repeat":      true,
	};
}

var threeMonitorsLayout = slate.layout("threeMonitors", {
    "Google Chrome": {
        "operations": [function (w) {
            var title  = w.title();
			var screen = title && title.match(/Hangout/) ? 2 : 1;

			w.doOperation(op("move", full, screen));
        }],
        "ignore-fail": true,
        "repeat": true,
    },
    "iTerm2":       d(0),
    "Sublime Text": d(0),
    "PhpStorm":     d(1),
    "Kalender":     d(2),
    "Slack":        d(2),
	"Mail":         d(2),
});

slate.bind("1:ctrl", slate.operation("layout", { "name" : threeMonitorsLayout }));
slate.default(["1920x1080", "1920x1080", "1440x900"], threeMonitorsLayout);

