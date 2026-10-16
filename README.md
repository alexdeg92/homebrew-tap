# Homebrew tap

Install the tap once:

```sh
brew tap alexdeg92/tap
```

| Package | Install | Documentation |
| --- | --- | --- |
| Agent Team PM | `brew install alexdeg92/tap/agent-team-pm` | [Team coordination skill](https://github.com/alexdeg92/agent-team-pm-releases) |
| Agent Office | `brew install alexdeg92/tap/agent-office` | [Live agent dashboard](https://github.com/alexdeg92/agent-office-oss) |

For Agent Team PM, run `agent-team-pm install` after the Homebrew installation,
then `agent-team-pm doctor`. The skill is installed for your user and its shared
board command is linked into `~/.local/bin`.

Agent Office requires Node.js 24 or newer. Both projects use the MIT license.
