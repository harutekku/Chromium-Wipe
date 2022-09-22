"use strict";

const wipeButton = document.getElementById("wipe")

function DeleteEverything(e) {
    chrome.browsingData.removeHistory({  })
    chrome.browsingData.removeCookies({  })
    chrome.browsingData.removeCache({  })
}

wipeButton.addEventListener("click", DeleteEverything)
