.class public Lcom/android/server/telecom/TelecomLoaderService;
.super Lcom/android/server/SystemService;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/TelecomLoaderService$1;,
        Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    }
.end annotation


# static fields
.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.ITelecomService"

.field private static final SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "TelecomLoaderService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.telecom"

    const-string v2, "com.android.server.telecom.TelecomService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/TelecomLoaderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/telecom/TelecomLoaderService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    return-void
.end method

.method private connectToTelecom()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    if-eqz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 93
    iput-object v5, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 96
    :cond_0
    new-instance v2, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    invoke-direct {v2, p0, v5}, Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;-><init>(Lcom/android/server/telecom/TelecomLoaderService;Lcom/android/server/telecom/TelecomLoaderService$1;)V

    .line 97
    .local v2, "serviceConnection":Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.ITelecomService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/server/telecom/TelecomLoaderService;->SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    const/16 v0, 0x41

    .line 102
    .local v0, "flags":I
    iget-object v3, p0, Lcom/android/server/telecom/TelecomLoaderService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    iput-object v2, p0, Lcom/android/server/telecom/TelecomLoaderService;->mServiceConnection:Lcom/android/server/telecom/TelecomLoaderService$TelecomServiceConnection;

    .line 105
    :cond_1
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 84
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/android/server/telecom/TelecomLoaderService;->connectToTelecom()V

    .line 87
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
