# MSN Integration - Release Notification Pipeline

## Himalaya Integration
```bash
himalaya account add --name "msn-releases" --email "releases@lilith.systems"
```

## Automated Release Email
Triggered on GitHub Release:
- To: `msn-modders@lilith.systems`, `cyberpunk-modding@lists.lilith.systems`
- Subject: `[MSN v{X.Y.Z}] {Release Title}`
- Body: Changelog + installation instructions + known issues

## Webhook Setup
```yaml
# .github/workflows/release-email.yml
on:
  release:
    types: [published]
jobs:
  notify:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Send release email
        run: |
          echo "${{ github.event.release.body }}" | himalaya -a msn-releases send \
            --to "msn-modders@lilith.systems" \
            --subject "[MSN v${{ github.event.release.tag_name }}] ${{ github.event.release.name }}"
```

## Mining Integration Notification
- Trigger: Mining milestone reached (hashrate, earnings)
- To: `mining@lilith.systems`, `msn-mining@lilith.systems`
- Subject: `[MSN Mining] {Milestone} - {Hashrate} KH/s, {LTC} LTC earned`
