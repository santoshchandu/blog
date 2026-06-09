## INTRO — Hook (0:00–0:45)

`[SCREEN: cold open — Zen Browser UI, no titles yet. Show the sidebar, split tabs, a clean workspace.]`


This is Zen Browser. Open source, built on Firefox, and it does most of what Arc did.

Their tagline is "Welcome to a calmer internet." Which is either the most soothing thing you've read today or it sounds like a wellness app. Either way — I've been running it as my daily driver for one year. Here's my actual take. Does the thing work.

`[SCREEN: title card — "Zen Browser: The Open Source Arc Alternative"]`

---

## SECTION 1 — What even is Zen Browser? (0:45–2:30)

`[SCREEN: Zen Browser GitHub page / about page]`

Quick background.

Zen runs on the Gecko engine — same thing Firefox uses. Not Chromium.

Depending on who you are, that's either the whole appeal or a reason to close the tab right now. We'll get into it.

`[SCREEN: show the browser with sidebar visible]`

The pitch is: Firefox, but with a real UI overhaul. Vertical tabs, workspaces, sidebar navigation.

And zero data collection — no telemetry, no tracking.

`[SCREEN: show Arc Browser UI briefly for comparison]`

People call it an Arc copy. And honestly, at first glance, yeah — the sidebar-first layout, the workspace concept, it's clearly inspired by Arc.

But Arc was closed source, VC-backed, and now it's basically abandoned. Zen is community-built, completely open source, and the codebase is on GitHub. You can read every line of it.

`[SCREEN: Zen GitHub repo]`

That difference matters if you care about what your software is actually doing.

And there's one more key thing: Arc required you to create an account just to use the browser. Zen doesn't. You just download it and use it.

`[SCREEN: show Zen download page — no sign-in required]`

That's a bigger deal than it sounds. Your browser shouldn't need to know who you are.

---

## SECTION 2 — Installing it (2:30–3:30)

`[SCREEN: show zen-browser.app download page]`

Installation is straightforward. Download from the website, or if you're on Mac and use Homebrew:

`[SCREEN: terminal — brew install zen-browser]`

```
brew install zen-browser
```

That's it. The website itself is also worth a quick look — it's genuinely well designed for an open source project. First impressions matter and they put work into it.

`[SCREEN: show Zen mods page / community themes]`

One thing to know before you dive in: there's a Zen mods registry. Community themes, CSS tweaks, layout changes. I'd recommend ignoring it for the first week — get used to the browser before you start customising it. But it's there when you're ready.

---

## SECTION 3 — The UI and what's actually different (3:30–7:30)

`[SCREEN: full Zen Browser UI walkthrough — start with default layout]`

Alright, let's actually look at it.

First thing: no tab bar at the top.

Everything is in a sidebar on the left — tabs, workspaces, pinned sites. If you've never used vertical tabs before, it's weird and your brain requirs some re-wireing to get used to it.

Worth saying though: if you're a complete beginner to vertical tabs, it is unnatural at first. Give it a few days before you decide it's not for you.

`[SCREEN: show essential tabs / pinned tabs at top of sidebar]`

At the top of the sidebar you've got essential tabs — basically pinned tabs. Sites you always have open. Your email, your GitHub, whatever. They stay put no matter what workspace you're in. Really useful once you set it up.

`[SCREEN: demonstrate compact mode — sidebar collapses, browser looks like native app]`

Compact mode collapses the sidebar completely. The browser basically disappears — you just get the webpage, full screen, and every app starts to look like a native macOS app. It's a clean look.

I use this a lot for reading and watching youtube videos.

`[SCREEN: demonstrate Glance — hover over a tab to preview it]`

Glance is one of those features you don't expect to love. You hover over a tab in the sidebar and it previews the page without switching to it.

If you have a lot of tabs open — which, if you're anything like me, you do — this is actually very useful. You can see what's in a tab without losing your place.

`[SCREEN: demonstrate tab splitting — show 4-tab support]`

Tab splitting is probably the feature I use the least.

Two pages side by side in a single window, no extension, no workaround.

And it supports up to four tabs at once — so you can genuinely tile your browser like a tiling window manager.


`[SCREEN: show floating URL bar — looks like macOS Spotlight]`

The floating URL bar is a nice touch. When you open a new tab, instead of a full new-tab page, you get a floating search bar in the middle of the screen — looks exactly like macOS Spotlight. It's faster and less disruptive than a whole new page.

`[SCREEN: open the workspaces panel — show folders]`

Workspaces now support folders too, which is new.

I keep work, personal, and research completely separate. The new tab in each workspace doesn't show sponsored tabs or suggested sites — just a clean search bar. That alone is a win over Chrome's new tab page.

`[SCREEN: show media player at the bottom of sidebar]`

There's a mini media player at the bottom of the sidebar. If you've got music or a video playing somewhere, it shows up there so you can control it without switching tabs.

Small thing. Works well.

`[SCREEN: show Cmd+Shift+C copying URL]`

Quick tip: Command+Shift+C copies the current website URL straight to your clipboard.

Sounds basic but I use it constantly. Much faster than clicking the address bar and selecting all.

`[SCREEN: open the mods / themes page]`

Then there's the customisation side, which is a rabbit hole.

Mods registry, community themes, CSS tweaks. Some people will not care about this at all.

---

## SECTION 4 — Privacy and the Firefox angle (7:30–9:30)

`[SCREEN: show privacy / tracking protection settings]`

Privacy is the whole point of this browser, so let's talk about it properly.

Tracking protection is on by default. No opt-in, no hunting through settings. Blocks trackers out of the box.

And there's no DRM at all — Zen doesn't include Widevine. That's the content protection system Chrome and Firefox use for streaming services.


`[SCREEN: show Firefox account sync screen]`

Because it's Firefox underneath, you can sign into a Firefox account for sync across devices — bookmarks, extensions, history.

You're not locked into a proprietary system. If Zen disappeared tomorrow, your data is still in Firefox.

`[SCREEN: show Firefox add-ons store — show container tabs extension]`

Extensions come from the Firefox add-ons store. The main ones are all there.

And because it's Firefox, you also get container tabs support — if you use Multi-Account Containers to keep your work and personal browsing isolated, that works here too.

Worth checking before you switch: if you rely on a very specific Chrome extension, it may not have a Firefox version. For most people this isn't an issue, but it's worth knowing.

---

## SECTION 5 — The honest rough edges (9:30–12:00)

`[SCREEN: stay on browser, maybe show a slightly broken site or settings screen]`

Okay. The honest bit.

Zen is in active development and it shows. Not in a way that makes it unusable — but the rough edges are real.


`[SCREEN: show uBlock Origin install]`

No built-in adblocker. You'll need to install uBlock Origin yourself.

Takes 30 seconds — not a dealbreaker — but worth knowing.



`[SCREEN: show crowded sidebar with many tabs open]`

If you're someone who always ends up with way too many tabs open, the sidebar actually works in your favor. Everything's in a list down the side — you can scroll through it, find what you need, and nothing's getting crushed into a tiny strip at the top.

`[SCREEN: show your screenshot of the sidebar glitching over the page content]`

This is one I ran into myself. When you switch between workspaces, the sidebar can glitch — it bleeds over the page content instead of staying in its lane. First time it happened I thought I'd broken something.

But it's a known bug. There are multiple open issues on the Zen GitHub for this.

One report is the sidebar getting completely stuck when you move a tab between workspaces — only fix is relaunching the browser.

Another: your mouse back and forward buttons sometimes start switching workspaces instead of navigating tab history. You're mid-browsing and your browser just goes somewhere else.

I'll link the GitHub issues in the description.

The team is shipping fixes fast — recent release notes mention workspace switching improvements. But right now, this stuff happens.

`[SCREEN: back to normal Zen UI]`

And look — this is an open source, community-built project. Every bug has a GitHub issue and someone looking at it. The update pace is fast. That counts for something.

---

## SECTION 6 — Who should actually switch? (12:00–13:30)

`[SCREEN: clean screen, minimal]`

So who is this actually for.

If you're sick of Chrome feeding your browsing back to Google — switch.

If you were on Arc and need somewhere to land — this is probably it.

If you're already on Firefox and want a UI that doesn't feel dated — try it. Same browser underneath, just looks and feels much better.

If you're into open source, self-hosting, owning your stack — Zen fits that mindset. Nothing hidden, everything on GitHub.


`[SCREEN: back to Zen]`

For me personally, one year in, not going back.

The sidebar alone made it worth it.

---

## OUTRO (13:30–14:30)

`[SCREEN: show Zen download page — zen-browser.app]`

If you want to try it, link's in the description. Free, open source, Windows, Mac, and Linux.

`[SCREEN: end card / subscribe prompt]`