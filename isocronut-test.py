import isocronut


def main():
	origin = '111 W Washington, Chicago'
	duration = 10

	isochrone = isocronut.get_isochrone(origin, duration)
	print isochrone


if __name__ == "__main__":
	main()