.class Lcom/android/server/telecom/TelecomLoaderService$4;
.super Landroid/database/ContentObserver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;

.field final synthetic val$defaultDialerAppUri:Landroid/net/Uri;

.field final synthetic val$defaultSmsAppUri:Landroid/net/Uri;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/pm/PackageManagerInternal;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/telecom/TelecomLoaderService;
    .param p2, "$anonymous0"    # Landroid/os/Handler;
    .param p3, "val$defaultSmsAppUri"    # Landroid/net/Uri;
    .param p4, "val$packageManagerInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p5, "val$defaultDialerAppUri"    # Landroid/net/Uri;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iput-object p3, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p5, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 283
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 287
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 289
    .local v1, "smsComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 291
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    .line 285
    .end local v1    # "smsComponent":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    invoke-static {v2}, Lcom/android/server/telecom/TelecomLoaderService;->-get0(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object v2

    .line 294
    invoke-static {v2}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 297
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    .line 300
    :cond_2
    iget-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2, v3, p3}, Lcom/android/server/telecom/TelecomLoaderService;->-wrap1(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V

    goto :goto_0
.end method
