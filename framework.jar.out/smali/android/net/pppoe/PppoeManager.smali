.class public Landroid/net/pppoe/PppoeManager;
.super Ljava/lang/Object;
.source "PppoeManager.java"


# static fields
.field public static final ACTION_PPPOE_NOTIFY:Ljava/lang/String; = "android.net.pppoe.PPPOE_NOTIFY"

.field public static final EXTRA_PPPOE_STATE:Ljava/lang/String; = "pppoe_state"

.field public static final PPPOE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.pppoe.PPPOE_STATE_CHANGED"

.field public static final PPPOE_STATE_CONNECTED:I = 0x3

.field public static final PPPOE_STATE_CONNECTING:I = 0x2

.field public static final PPPOE_STATE_DISCONNECTED:I = 0x1

.field public static final PPPOE_STATE_DISCONNECTING:I = 0x0

.field public static final PPPOE_STATE_UNKNOWN:I = 0x4


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/pppoe/IPppoeManager;


# direct methods
.method public constructor <init>(Landroid/net/pppoe/IPppoeManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "service"    # Landroid/net/pppoe/IPppoeManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    .line 122
    iput-object p2, p0, Landroid/net/pppoe/PppoeManager;->mHandler:Landroid/os/Handler;

    .line 123
    return-void
.end method


# virtual methods
.method public forceDisconnect()Z
    .locals 2

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->forceDisconnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 136
    :goto_0
    return v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPppoeState()I
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1}, Landroid/net/pppoe/IPppoeManager;->getPppoeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setPppoeEnabled(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/net/pppoe/PppoeManager;->mService:Landroid/net/pppoe/IPppoeManager;

    invoke-interface {v1, p1}, Landroid/net/pppoe/IPppoeManager;->setPppoeEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 129
    :goto_0
    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
