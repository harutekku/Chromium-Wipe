# Executables
#----------------------------------------
CHROME    := chromium
OPENSSL   := openssl

# Directories
#----------------------------------------
EXTDIR    := ext
SRCDIR    := ${EXTDIR}/src

# Flags
#----------------------------------------
FLAGS     := --no-message-box

# Sources
#----------------------------------------
SRCFILES  := background.js index.html manifest.json main.js

# Target
#----------------------------------------
TARGET    := ext.crx
RSAKEY    := ext.pem

# Final command
#----------------------------------------
MAKEEXT   := ${CHROME} ${FLAGS} --pack-extension=${EXTDIR} --pack-extension-key=${RSAKEY}

vpath %.js   ${SRCDIR}
vpath %.html ${SRCDIR}
vpath %      ${EXTDIR}

${TARGET}: ${SRCFILES} ${RSAKEY}
	${MAKEEXT}

${RSAKEY}:
	${OPENSSL} genrsa 2048 | ${OPENSSL} pkcs8 -topk8 -nocrypt -out ${RSAKEY}

