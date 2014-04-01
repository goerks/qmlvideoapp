function convOrientationToString(orientation)
{
	if (orientation == 1) {
		console.debug("Screen orientation: PortraitOrientation")
		return "PortraitOrientation"
	}
	else if (orientation == 2) {
		console.debug("Screen orientation: LandscapeOrientation")
		return "LandscapeOrientation"
	}
	else if (orientation == 4) {
		console.debug("Screen orientation: InvertedPortraitOrientation")
		return "InvertedPortraitOrientation"
	}
	else if (orientation == 8) {
		console.debug("Screen orientation: InvertedLandscapeOrientation")
		return "InvertedLandscapeOrientation"
	}
}
