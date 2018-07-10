import isocronut


def main():
	origin = '111 W Washington, Chicago'
	duration = 10

	isochrone = isocronut.get_isochrone(origin, duration)
	print isochrone

	# Result is:
	# [[41.9035834, -87.6314247], [41.9054403, -87.62503919999999], [41.8961807, -87.6038597], [41.8917542, -87.6037103], [41.8665574, -87.6084865], [41.8520941, -87.6118497], [41.8539463, -87.6318112], [41.8697458, -87.6408041], [41.87536370000001, -87.6520623], [41.88277, -87.65356], [41.89440219999999, -87.6584637], [41.8974267, -87.6423078]]


if __name__ == "__main__":
	main()