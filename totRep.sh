docker logs exorde1 -t --tail=500 2>&1 | grep "INFO:root:        youtube\|INFO:root:         reddit\|INFO:root:        twitter\|INFO:root:          4chan\|INFO:root:            rss\|INFO:root:            jvc\|INFO:root:          nostr\|INFO:root:       mastodon\|INFO:root:     forocoches\|INFO:root:          weibo\|INFO:root:    bitcointalk\|INFO:root:     hackernews\|INFO:root:    tradingview\|INFO:root:       followin\|INFO:root:   seekingalpha\|INFO:root:          other" | tail -1 | awk "{print $16}"
