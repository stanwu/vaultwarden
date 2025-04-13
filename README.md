![Vaultwarden 標誌](./resources/vaultwarden-logo-auto.svg)

一個替代的 Bitwarden 客戶端 API 伺服器實現，使用 Rust 編寫，與[官方 Bitwarden 客戶端](https://bitwarden.com/download/) [[免責聲明](#免責聲明)]相容，非常適合在資源有限的環境中自我託管部署，而不需要運行官方的資源密集型服務。

---

[![GitHub 版本](https://img.shields.io/github/release/dani-garcia/vaultwarden.svg?style=for-the-badge&logo=vaultwarden&color=005AA4)](https://github.com/dani-garcia/vaultwarden/releases/latest)
[![ghcr.io 拉取次數](https://img.shields.io/badge/dynamic/json?style=for-the-badge&logo=github&logoColor=fff&color=005AA4&url=https%3A%2F%2Fipitio.github.io%2Fbackage%2Fdani-garcia%2Fvaultwarden%2Fvaultwarden.json&query=%24.downloads&label=ghcr.io%20pulls&cacheSeconds=14400)](https://github.com/dani-garcia/vaultwarden/pkgs/container/vaultwarden)
[![Docker 拉取次數](https://img.shields.io/docker/pulls/vaultwarden/server.svg?style=for-the-badge&logo=docker&logoColor=fff&color=005AA4&label=docker.io%20pulls)](https://hub.docker.com/r/vaultwarden/server)
[![Quay.io](https://img.shields.io/badge/quay.io-download-005AA4?style=for-the-badge&logo=redhat&cacheSeconds=14400)](https://quay.io/repository/vaultwarden/server) <br>
[![貢獻者](https://img.shields.io/github/contributors-anon/dani-garcia/vaultwarden.svg?style=flat-square&logo=vaultwarden&color=005AA4)](https://github.com/dani-garcia/vaultwarden/graphs/contributors)
[![分叉數](https://img.shields.io/github/forks/dani-garcia/vaultwarden.svg?style=flat-square&logo=github&logoColor=fff&color=005AA4)](https://github.com/dani-garcia/vaultwarden/network/members)
[![星標數](https://img.shields.io/github/stars/dani-garcia/vaultwarden.svg?style=flat-square&logo=github&logoColor=fff&color=005AA4)](https://github.com/dani-garcia/vaultwarden/stargazers)
[![未解決問題](https://img.shields.io/github/issues/dani-garcia/vaultwarden.svg?style=flat-square&logo=github&logoColor=fff&color=005AA4&cacheSeconds=300)](https://github.com/dani-garcia/vaultwarden/issues)
[![已解決問題](https://img.shields.io/github/issues-closed/dani-garcia/vaultwarden.svg?style=flat-square&logo=github&logoColor=fff&color=005AA4&cacheSeconds=300)](https://github.com/dani-garcia/vaultwarden/issues?q=is%3Aissue+is%3Aclosed)
[![AGPL-3.0 授權](https://img.shields.io/github/license/dani-garcia/vaultwarden.svg?style=flat-square&logo=vaultwarden&color=944000&cacheSeconds=14400)](https://github.com/dani-garcia/vaultwarden/blob/main/LICENSE.txt) <br>
[![依賴狀態](https://img.shields.io/badge/dynamic/xml?url=https%3A%2F%2Fdeps.rs%2Frepo%2Fgithub%2Fdani-garcia%2Fvaultwarden%2Fstatus.svg&query=%2F*%5Blocal-name()%3D'svg'%5D%2F*%5Blocal-name()%3D'g'%5D%5B2%5D%2F*%5Blocal-name()%3D'text'%5D%5B4%5D&style=flat-square&logo=rust&label=dependencies&color=005AA4)](https://deps.rs/repo/github/dani-garcia/vaultwarden)
[![GHA 發佈](https://img.shields.io/github/actions/workflow/status/dani-garcia/vaultwarden/release.yml?style=flat-square&logo=github&logoColor=fff&label=Release%20Workflow)](https://github.com/dani-garcia/vaultwarden/actions/workflows/release.yml)
[![GHA 構建](https://img.shields.io/github/actions/workflow/status/dani-garcia/vaultwarden/build.yml?style=flat-square&logo=github&logoColor=fff&label=Build%20Workflow)](https://github.com/dani-garcia/vaultwarden/actions/workflows/build.yml) <br>
[![Matrix 聊天](https://img.shields.io/matrix/vaultwarden:matrix.org.svg?style=flat-square&logo=matrix&logoColor=fff&color=953B00&cacheSeconds=14400)](https://matrix.to/#/#vaultwarden:matrix.org)
[![GitHub 討論](https://img.shields.io/github/discussions/dani-garcia/vaultwarden?style=flat-square&logo=github&logoColor=fff&color=953B00&cacheSeconds=300)](https://github.com/dani-garcia/vaultwarden/discussions)
[![Discourse 討論](https://img.shields.io/discourse/topics?server=https%3A%2F%2Fvaultwarden.discourse.group%2F&style=flat-square&logo=discourse&color=953B00)](https://vaultwarden.discourse.group/)

> [!IMPORTANT]
> **使用此伺服器時，請直接向我們報告任何錯誤或建議（參見[聯繫方式](#聯繫方式)），無論您使用的是哪種客戶端（移動端、桌面端、瀏覽器...）。請勿使用官方 Bitwarden 支援渠道。**

<br>

## 功能

提供幾乎完整的 Bitwarden 客戶端 API 實現，包括：

 * [個人保險庫](https://bitwarden.com/help/managing-items/)
 * [傳送](https://bitwarden.com/help/about-send/)
 * [附件](https://bitwarden.com/help/attachments/)
 * [網站圖標](https://bitwarden.com/help/website-icons/)
 * [個人 API 金鑰](https://bitwarden.com/help/personal-api-key/)
 * [組織](https://bitwarden.com/help/getting-started-organizations/)
   - [集合](https://bitwarden.com/help/about-collections/)、
     [密碼共享](https://bitwarden.com/help/sharing/)、
     [成員角色](https://bitwarden.com/help/user-types-access-control/)、
     [群組](https://bitwarden.com/help/about-groups/)、
     [事件日誌](https://bitwarden.com/help/event-logs/)、
     [管理員密碼重置](https://bitwarden.com/help/admin-reset/)、
     [目錄連接器](https://bitwarden.com/help/directory-sync/)、
     [政策](https://bitwarden.com/help/policies/)
 * [多重/雙重身份驗證](https://bitwarden.com/help/bitwarden-field-guide-two-step-login/)
   - [身份驗證器](https://bitwarden.com/help/setup-two-step-login-authenticator/)、
     [電子郵件](https://bitwarden.com/help/setup-two-step-login-email/)、
     [FIDO2 WebAuthn](https://bitwarden.com/help/setup-two-step-login-fido/)、
     [YubiKey](https://bitwarden.com/help/setup-two-step-login-yubikey/)、
     [Duo](https://bitwarden.com/help/setup-two-step-login-duo/)
 * [緊急訪問](https://bitwarden.com/help/emergency-access/)
 * [Vaultwarden 管理後端](https://github.com/dani-garcia/vaultwarden/wiki/Enabling-admin-page)
 * [修改的 Web Vault 客戶端](https://github.com/dani-garcia/bw_web_builds)（捆綁在我們的容器中）

<br>

## 使用方法

> [!IMPORTANT]
> 大多數現代網頁瀏覽器不允許在不安全的上下文中使用 Web Crypto API。在這種情況下，您可能會遇到類似 `Cannot read property 'importKey'` 的錯誤。要解決此問題，您需要通過 HTTPS 或 localhost 訪問 Web Vault。
>
>這可以在 [Vaultwarden 中直接配置](https://github.com/dani-garcia/vaultwarden/wiki/Enabling-HTTPS)或使用第三方反向代理（[一些示例](https://github.com/dani-garcia/vaultwarden/wiki/Proxy-examples)）。
>
>如果您有可用的域名，可以使用 [Let's Encrypt](https://letsencrypt.org/) 獲取 HTTPS 證書，或者可以使用像 [mkcert](https://github.com/FiloSottile/mkcert) 這樣的工具生成自簽名證書。一些代理會自動完成此步驟，例如 Caddy 或 Traefik（請參見上面鏈接的示例）。

> [!TIP]
>**有關如何安裝、使用和配置 Vaultwarden 的更詳細示例，您可以查看我們的 [Wiki](https://github.com/dani-garcia/vaultwarden/wiki)。**

使用 Vaultwarden 的主要方式是通過我們的容器映像，這些映像已發佈到 [ghcr.io](https://github.com/dani-garcia/vaultwarden/pkgs/container/vaultwarden)、[docker.io](https://hub.docker.com/r/vaultwarden/server) 和 [quay.io](https://quay.io/repository/vaultwarden/server)。

還有[社區驅動的包](https://github.com/dani-garcia/vaultwarden/wiki/Third-party-packages)可以使用，但這些包可能落後於最新版本，或者在 Vaultwarden 的配置方式上有所不同，如我們的 [Wiki](https://github.com/dani-garcia/vaultwarden/wiki) 中所述。

### Docker/Podman CLI

拉取容器映像並從主機掛載一個卷以進行持久化存儲。<br>
如果您更喜歡使用 podman，可以將 `docker` 替換為 `podman`。

```shell
docker pull vaultwarden/server:latest
docker run --detach --name vaultwarden \
  --env DOMAIN="https://vw.domain.tld" \
  --volume /vw-data/:/data/ \
  --restart unless-stopped \
  --publish 80:80 \
  vaultwarden/server:latest
```

這將在 `/vw-data/` 下保留任何持久化數據，您可以根據需要調整路徑。

### Docker Compose

要使用 Docker compose，您需要創建一個 `compose.yaml`，其中將包含運行 Vaultwarden 容器的配置。

```yaml
services:
  vaultwarden:
    image: vaultwarden/server:latest
    container_name: vaultwarden
    restart: unless-stopped
    environment:
      DOMAIN: "https://vw.domain.tld"
    volumes:
      - ./vw-data/:/data/
    ports:
      - 80:80
```

<br>

## 聯繫方式

有問題、建議或需要幫助？加入我們的社區：[Matrix](https://matrix.to/#/#vaultwarden:matrix.org)、[GitHub 討論](https://github.com/dani-garcia/vaultwarden/discussions) 或 [Discourse 論壇](https://vaultwarden.discourse.group/)。

遇到錯誤或崩潰？請搜索我們的問題追蹤器和討論，看看是否已經被報告。如果沒有，請[開始新的討論](https://github.com/dani-garcia/vaultwarden/discussions)或[創建新問題](https://github.com/dani-garcia/vaultwarden/issues/)。確保您使用的是最新版本的 Vaultwarden，並且沒有任何類似的問題已開啟或已關閉！

<br>

## 貢獻者

感謝您對本項目的貢獻！

[![貢獻者數量](https://img.shields.io/github/contributors-anon/dani-garcia/vaultwarden?style=for-the-badge&logo=vaultwarden&color=005AA4)](https://github.com/dani-garcia/vaultwarden/graphs/contributors)<br>
[![貢獻者頭像](https://contributors-img.web.app/image?repo=dani-garcia/vaultwarden)](https://github.com/dani-garcia/vaultwarden/graphs/contributors)

<br>

## 免責聲明

**本項目與 [Bitwarden](https://bitwarden.com/) 或 Bitwarden, Inc. 無關。**

然而，Vaultwarden 的一位活躍維護者受僱於 Bitwarden，並被允許在自己的時間內為該項目做出貢獻。這些貢獻是獨立於 Bitwarden 的，並由其他維護者審核。

維護者共同努力為項目設定方向，專注於服務於自我託管社區，包括個人、家庭和小型組織，同時確保項目的可持續性。

**請注意：** 我們對使用 Vaultwarden 時可能發生的任何數據丟失概不負責，包括密碼、附件和應用程序處理的其他信息。我們強烈建議定期備份您的文件和數據庫。然而，如果您遇到數據丟失，我們鼓勵您立即與我們聯繫。

<br>

## Bitwarden_RS

此項目曾被稱為 Bitwarden_RS，並已更名以與官方 Bitwarden 伺服器區分開來，希望避免混淆和商標/品牌問題。<br>
請參見 [#1642 - v1.21.0 發佈和項目更名為 Vaultwarden](https://github.com/dani-garcia/vaultwarden/discussions/1642) 以獲取更多解釋。
