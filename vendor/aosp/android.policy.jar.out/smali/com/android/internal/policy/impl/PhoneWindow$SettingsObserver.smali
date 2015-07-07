.class final Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 272
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 273
    return-void
.end method


# virtual methods
.method checkGestures()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_stylus_gestures"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mEnableGestures:Z
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$102(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 297
    return-void

    :cond_0
    move v0, v1

    .line 294
    goto :goto_0
.end method

.method observe()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 277
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "enable_stylus_gestures"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;->checkGestures()V

    .line 281
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;->checkGestures()V

    .line 291
    return-void
.end method

.method unobserve()V
    .locals 2

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 285
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 286
    return-void
.end method
