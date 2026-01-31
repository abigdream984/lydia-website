# SSH Configuration for Multiple GitHub Accounts
# GitHub Account 1: ericwang984
Host github.com-eric
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_eric
    IdentitiesOnly yes

# GitHub Account 2: abigdream984
Host github.com-abig
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_abig
    IdentitiesOnly yes

# Default account (your main account - ericwang984)
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa
    IdentitiesOnly yes
