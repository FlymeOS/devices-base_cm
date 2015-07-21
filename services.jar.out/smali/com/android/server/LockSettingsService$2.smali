.class Lcom/android/server/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0x3e8

    const/4 v8, 0x0

    .line 103
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 105
    .local v4, "userHandle":I
    invoke-static {v4, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 106
    .local v5, "userSysUid":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 109
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, v5}, Landroid/security/KeyStore;->resetUid(I)Z

    .line 112
    iget-object v6, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 113
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 114
    .local v1, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 115
    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 116
    .local v2, "parentSysUid":I
    invoke-virtual {v0, v2, v5}, Landroid/security/KeyStore;->syncUid(II)Z

    .line 122
    .end local v0    # "ks":Landroid/security/KeyStore;
    .end local v1    # "parentInfo":Landroid/content/pm/UserInfo;
    .end local v2    # "parentSysUid":I
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandle":I
    .end local v5    # "userSysUid":I
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v6, "android.intent.action.USER_STARTING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 120
    .restart local v4    # "userHandle":I
    iget-object v6, p0, Lcom/android/server/LockSettingsService$2;->this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;
    invoke-static {v6}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    goto :goto_0
.end method
