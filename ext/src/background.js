"use strict";

// TODO: Maybe display some statistics?
chrome.runtime.onStartup.addListener(async () => {
    chrome.browsingData.removeHistory({  })
    chrome.browsingData.removeCookies({  })
    chrome.browsingData.removeCache({  })
})
