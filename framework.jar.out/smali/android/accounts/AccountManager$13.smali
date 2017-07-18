.class Landroid/accounts/AccountManager$13;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->addAccountAsUser(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$optionsIn:Landroid/os/Bundle;

.field final synthetic val$requiredFeatures:[Ljava/lang/String;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/AccountManager;
    .param p2, "this$0_1"    # Landroid/accounts/AccountManager;
    .param p3, "$anonymous0"    # Landroid/app/Activity;
    .param p4, "$anonymous1"    # Landroid/os/Handler;
    .param p6, "val$accountType"    # Ljava/lang/String;
    .param p7, "val$authTokenType"    # Ljava/lang/String;
    .param p8, "val$requiredFeatures"    # [Ljava/lang/String;
    .param p9, "val$activity"    # Landroid/app/Activity;
    .param p10, "val$optionsIn"    # Landroid/os/Bundle;
    .param p11, "val$userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1552
    .local p5, "$anonymous2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p2, p0, Landroid/accounts/AccountManager$13;->this$0:Landroid/accounts/AccountManager;

    iput-object p6, p0, Landroid/accounts/AccountManager$13;->val$accountType:Ljava/lang/String;

    iput-object p7, p0, Landroid/accounts/AccountManager$13;->val$authTokenType:Ljava/lang/String;

    iput-object p8, p0, Landroid/accounts/AccountManager$13;->val$requiredFeatures:[Ljava/lang/String;

    iput-object p9, p0, Landroid/accounts/AccountManager$13;->val$activity:Landroid/app/Activity;

    iput-object p10, p0, Landroid/accounts/AccountManager$13;->val$optionsIn:Landroid/os/Bundle;

    iput-object p11, p0, Landroid/accounts/AccountManager$13;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p1, p3, p4, p5}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1554
    const/16 v0, 0x1f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1555
    iget-object v0, p0, Landroid/accounts/AccountManager$13;->this$0:Landroid/accounts/AccountManager;

    invoke-static {v0}, Landroid/accounts/AccountManager;->-get3(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/AccountManager$13;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v2, p0, Landroid/accounts/AccountManager$13;->val$accountType:Ljava/lang/String;

    iget-object v3, p0, Landroid/accounts/AccountManager$13;->val$authTokenType:Ljava/lang/String;

    .line 1556
    iget-object v4, p0, Landroid/accounts/AccountManager$13;->val$requiredFeatures:[Ljava/lang/String;

    iget-object v5, p0, Landroid/accounts/AccountManager$13;->val$activity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget-object v6, p0, Landroid/accounts/AccountManager$13;->val$optionsIn:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/accounts/AccountManager$13;->val$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1555
    invoke-interface/range {v0 .. v7}, Landroid/accounts/IAccountManager;->addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    .line 1553
    return-void

    .line 1556
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
