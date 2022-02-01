build:
	fvm flutter build

code_gen_bindings:
	fvm flutter pub get
	fvm flutter pub run ffigen
