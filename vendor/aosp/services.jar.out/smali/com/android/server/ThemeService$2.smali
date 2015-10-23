.class Lcom/android/server/ThemeService$2;
.super Landroid/content/BroadcastReceiver;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThemeService;


# direct methods
.method constructor <init>(Lcom/android/server/ThemeService;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/android/server/ThemeService$2;->this$0:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1165
    const-string v4, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1166
    .local v3, "userHandle":I
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/ThemeService$2;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mCurrentUserId:I
    invoke-static {v4}, Lcom/android/server/ThemeService;->access$1200(Lcom/android/server/ThemeService;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1167
    iget-object v4, p0, Lcom/android/server/ThemeService$2;->this$0:Lcom/android/server/ThemeService;

    # setter for: Lcom/android/server/ThemeService;->mCurrentUserId:I
    invoke-static {v4, v3}, Lcom/android/server/ThemeService;->access$1202(Lcom/android/server/ThemeService;I)I

    .line 1168
    iget-object v4, p0, Lcom/android/server/ThemeService$2;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/ThemeService;->access$1300(Lcom/android/server/ThemeService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/content/res/ThemeConfig;->getBootThemeForUser(Landroid/content/ContentResolver;I)Landroid/content/res/ThemeConfig;

    move-result-object v0

    .line 1174
    .local v0, "config":Landroid/content/res/ThemeConfig;
    new-instance v4, Landroid/content/res/ThemeChangeRequest$Builder;

    invoke-direct {v4, v0}, Landroid/content/res/ThemeChangeRequest$Builder;-><init>(Landroid/content/res/ThemeConfig;)V

    invoke-virtual {v4}, Landroid/content/res/ThemeChangeRequest$Builder;->build()Landroid/content/res/ThemeChangeRequest;

    move-result-object v2

    .line 1176
    .local v2, "request":Landroid/content/res/ThemeChangeRequest;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ThemeService$2;->this$0:Lcom/android/server/ThemeService;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/server/ThemeService;->requestThemeChange(Landroid/content/res/ThemeChangeRequest;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1181
    .end local v0    # "config":Landroid/content/res/ThemeConfig;
    .end local v2    # "request":Landroid/content/res/ThemeChangeRequest;
    :cond_0
    :goto_0
    return-void

    .line 1177
    .restart local v0    # "config":Landroid/content/res/ThemeConfig;
    .restart local v2    # "request":Landroid/content/res/ThemeChangeRequest;
    :catch_0
    move-exception v1

    .line 1178
    .local v1, "e":Landroid/os/RemoteException;
    # getter for: Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ThemeService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to change theme for user change"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
