.class Lcom/android/server/ThemeService$1;
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
    .line 1148
    iput-object p1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    # getter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v1}, Lcom/android/server/ThemeService;->access$1000(Lcom/android/server/ThemeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    new-instance v0, Landroid/content/res/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Landroid/content/res/ThemeChangeRequest$Builder;-><init>()V

    .line 1154
    .local v0, "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Landroid/content/res/ThemeChangeRequest$Builder;

    .line 1155
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Landroid/content/res/ThemeChangeRequest$Builder;->build()Landroid/content/res/ThemeChangeRequest;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # invokes: Lcom/android/server/ThemeService;->updateProvider(Landroid/content/res/ThemeChangeRequest;J)V
    invoke-static {v1, v2, v4, v5}, Lcom/android/server/ThemeService;->access$1100(Lcom/android/server/ThemeService;Landroid/content/res/ThemeChangeRequest;J)V

    .line 1159
    .end local v0    # "builder":Landroid/content/res/ThemeChangeRequest$Builder;
    :goto_0
    return-void

    .line 1157
    :cond_0
    iget-object v1, p0, Lcom/android/server/ThemeService$1;->this$0:Lcom/android/server/ThemeService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z
    invoke-static {v1, v2}, Lcom/android/server/ThemeService;->access$1002(Lcom/android/server/ThemeService;Z)Z

    goto :goto_0
.end method
