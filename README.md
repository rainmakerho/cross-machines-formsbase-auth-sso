# cross-machines-formsbase-auth-sso
在 [多個 Web Application 使用同一個 Forms Authentication](https://dotblogs.com.tw/rainmaker/2015/06/11/151544) 之中，
我們透過設定相同的 machineKey 來達到讓不同的 Web Application 所產生的 forms-base authentication cookie 是可以相通的。
而測試是在這些 Web Application 在同一台機器之中，如果是不同的機器時，例如(http://ap1.rmtech.com/ 與 http://ap2.rmtech.com/)，又該如何處理呢?

詳細說明請參考 [跨機器間的 Web Application 使用 forms-base authentication 來達到 Single sign-on(SSO)](https://rainmakerho.github.io/2020/12/08/corss-machines-forms-based-authentication-sso/)